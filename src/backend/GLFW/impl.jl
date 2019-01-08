function nk_glfw3_device_create()
    vertex_shader = read(joinpath(@__DIR__, "vertex.glsl"), String)
    fragment_shader = read(joinpath(@__DIR__, "fragment.glsl"), String)
    glfw.ogl = nk_glfw_device()
    dev = glfw.ogl

    dev.cmds = nk_create_buffer()
    nk_buffer_init_default(dev.cmds)
    # dev.null = Ptr{nk_draw_null_texture}(C_NULL) # nk_create_draw_null_texture()
    dev.null = nk_draw_null_texture(nk_handle(0), nk_vec2(0,0))
    dev.prog = glCreateProgram()
    dev.vert_shdr = glCreateShader(GL_VERTEX_SHADER)
    dev.frag_shdr = glCreateShader(GL_FRAGMENT_SHADER)
    glShaderSource(dev.vert_shdr, 1, Ptr{GLchar}[pointer(vertex_shader)], C_NULL)
    glShaderSource(dev.frag_shdr, 1, Ptr{GLchar}[pointer(fragment_shader)], C_NULL)
    glCompileShader(dev.vert_shdr)
    glCompileShader(dev.frag_shdr)

    status_ref = Ref{GLint}(-1)
    glGetShaderiv(dev.vert_shdr, GL_COMPILE_STATUS, status_ref)
    if status_ref[] != GL_TRUE
        max_length_ref = Ref{GLsizei}(0)
        glGetShaderiv(dev.vert_shdr, GL_INFO_LOG_LENGTH, max_length_ref)
        actual_length_ref = Ref{GLsizei}(0)
        log = Vector{GLchar}(undef, max_length_ref[])
        glGetShaderInfoLog(dev.vert_shdr, max_length_ref[], actual_length_ref, log)
        @error "[GL]: failed to compile vertex shader: $(dev.vert_shdr): $(String(log))"
    end

    status_ref = Ref{GLint}(-1)
    glGetShaderiv(dev.frag_shdr, GL_COMPILE_STATUS, status_ref)
    if status_ref[] != GL_TRUE
        max_length_ref = Ref{GLsizei}(0)
        glGetShaderiv(dev.frag_shdr, GL_INFO_LOG_LENGTH, max_length_ref)
        actual_length_ref = Ref{GLsizei}(0)
        log = Vector{GLchar}(undef, max_length_ref[])
        glGetShaderInfoLog(dev.frag_shdr, max_length_ref[], actual_length_ref, log)
        @error "[GL]: failed to compile fragment shader: $(dev.vert_shdr): $(String(log))"
    end

    glAttachShader(dev.prog, dev.vert_shdr)
    glAttachShader(dev.prog, dev.frag_shdr)
    glLinkProgram(dev.prog)
    status_ref = Ref{GLint}(-1)
    glGetProgramiv(dev.prog, GL_LINK_STATUS, status_ref)
    @assert status_ref[] == GL_TRUE

    dev.uniform_tex = glGetUniformLocation(dev.prog, "tex")
    dev.uniform_proj = glGetUniformLocation(dev.prog, "proj_mat")
    dev.attrib_pos = glGetAttribLocation(dev.prog, "position")
    dev.attrib_uv = glGetAttribLocation(dev.prog, "texcoord")
    dev.attrib_col = glGetAttribLocation(dev.prog, "color")

    # buffer setup
    vs = sizeof(nk_glfw_vertex)
    vp = fieldoffset(nk_glfw_vertex, 1)
    vt = fieldoffset(nk_glfw_vertex, 2)
    vc = fieldoffset(nk_glfw_vertex, 3)

    vbo_ref = Ref{GLuint}(0)
    ebo_ref = Ref{GLuint}(0)
    vao_ref = Ref{GLuint}(0)
    glGenBuffers(1, vbo_ref)
    glGenBuffers(1, ebo_ref)
    glGenVertexArrays(1, vao_ref)
    dev.vao = vao_ref[]
    dev.vbo = vbo_ref[]
    dev.ebo = ebo_ref[]

    glBindVertexArray(dev.vao)
    glBindBuffer(GL_ARRAY_BUFFER, dev.vbo)
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, dev.ebo)

    glEnableVertexAttribArray(dev.attrib_pos)
    glEnableVertexAttribArray(dev.attrib_uv)
    glEnableVertexAttribArray(dev.attrib_col)

    glVertexAttribPointer(dev.attrib_pos, 2, GL_FLOAT, GL_FALSE, vs, Ptr{Cvoid}(vp))
    glVertexAttribPointer(dev.attrib_uv, 2, GL_FLOAT, GL_FALSE, vs, Ptr{Cvoid}(vt))
    glVertexAttribPointer(dev.attrib_col, 4, GL_UNSIGNED_BYTE, GL_TRUE, vs, Ptr{Cvoid}(vc))

    glBindTexture(GL_TEXTURE_2D, 0)
    glBindBuffer(GL_ARRAY_BUFFER, 0)
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0)
    glBindVertexArray(0)

    return dev
end

function nk_glfw3_init(win::GLFW.Window, init_state, max_vertex_buffer, max_element_buffer)
    glfw.win = win
    if init_state == NK_GLFW3_INSTALL_CALLBACKS
        GLFW.SetScrollCallback(win, nk_gflw3_scroll_callback)
        GLFW.SetCharCallback(win, nk_glfw3_char_callback)
        GLFW.SetMouseButtonCallback(win, nk_glfw3_mouse_button_callback)
    end
    glfw.ctx = nk_create_context()
    nk_init_default(glfw.ctx, C_NULL)
    # pending https://github.com/JuliaLang/julia/pull/21912
    # clipboard_copy = @cfunction(nk_glfw3_clipboard_copy, Cvoid, (nk_handle, Ptr{UInt8}, Cint))
    # clipboard_paste = @cfunction(nk_glfw3_clipboard_paste, Cvoid, (nk_handle, Ptr{nk_text_edit}))
    # glfw.ctx.clip.copy = clipboard_copy
    # glfw.ctx.clip.paste = clipboard_paste
    # glfw.ctx.clip.userdata = nk_handle(0)
    glfw.last_button_click = 0
    nk_glfw3_device_create()

    glfw.is_double_click_down = false
    glfw.double_click_pos = nk_vec2(0, 0)
    glfw.text = Char[]
    return glfw.ctx
end

function nk_glfw3_device_upload_atlas(image, width, height)
    dev = glfw.ogl
    tex = Ref{GLuint}(0)
    glGenTextures(1, tex)
    dev.font_tex = tex[]
    glBindTexture(GL_TEXTURE_2D, dev.font_tex)
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR)
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR)
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, GLsizei(width), GLsizei(height), 0,
                 GL_RGBA, GL_UNSIGNED_BYTE, image)
end

function nk_glfw3_font_stash_begin()
    atlas = nk_create_font_atlas()
    GC.@preserve atlas begin
        nk_font_atlas_init_default(atlas)
        nk_font_atlas_begin(atlas)
        glfw.atlas = atlas
    end
    return nothing
end

function nk_glfw3_font_stash_end()
    w = Ref{Cint}(0)
    h = Ref{Cint}(0)
    image = nk_font_atlas_bake(glfw.atlas, w, h, NK_FONT_ATLAS_RGBA32)
    nk_glfw3_device_upload_atlas(image, w[], h[])
    null_ref = Ref{nk_draw_null_texture}(glfw.ogl.null)
    nk_font_atlas_end(glfw.atlas, nk_handle_id(glfw.ogl.font_tex), null_ref)
    glfw.ogl.null = null_ref[]
    nk_set_default_font(glfw.ctx, glfw.atlas)
    return nothing
end

function nk_glfw3_device_destroy()
    dev = glfw.ogl
    glDetachShader(dev.prog, dev.vert_shdr)
    glDetachShader(dev.prog, dev.frag_shdr)
    glDeleteShader(dev.vert_shdr)
    glDeleteShader(dev.frag_shdr)
    glDeleteProgram(dev.prog)
    font_tex_ref = Ref{UInt32}(dev.font_tex)
    vbo_ref = Ref{UInt32}(dev.vbo)
    ebo_ref = Ref{UInt32}(dev.ebo)
    glDeleteTextures(1, font_tex_ref)
    glDeleteBuffers(1, vbo_ref)
    glDeleteBuffers(1, ebo_ref)
    nk_buffer_free(dev.cmds)
end

function nk_glfw3_render(anti_alias, max_vertex_buffer::Integer, max_element_buffer::Integer)
    dev = glfw.ogl
    orthomatrix = GLfloat[2.0, 0.0, 0.0, 0.0,
                          0.0,-2.0, 0.0, 0.0,
                          0.0, 0.0,-1.0, 0.0,
                         -1.0, 1.0, 0.0, 1.0]
    orthomatrix[1] *= 1 / GLfloat(glfw.width)
    orthomatrix[6] *= 1 / GLfloat(glfw.height)

    glEnable(GL_BLEND)
    glBlendEquation(GL_FUNC_ADD)
    glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA)
    glDisable(GL_CULL_FACE)
    glDisable(GL_DEPTH_TEST)
    glEnable(GL_SCISSOR_TEST)
    glActiveTexture(GL_TEXTURE0)

    glUseProgram(dev.prog)
    glUniform1i(dev.uniform_tex, 0)
    glUniformMatrix4fv(dev.uniform_proj, 1, GL_FALSE, orthomatrix)
    glViewport(0, 0, glfw.display_width, glfw.display_height)

    # convert from command queue into draw list and draw to screen
    # allocate vertex and element buffer
    glBindVertexArray(dev.vao)
    glBindBuffer(GL_ARRAY_BUFFER, dev.vbo)
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, dev.ebo)

    glBufferData(GL_ARRAY_BUFFER, max_vertex_buffer, C_NULL, GL_STREAM_DRAW)
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, max_element_buffer, C_NULL, GL_STREAM_DRAW)

    # load draw vertices & elements directly into vertex + element buffer
    vertices = glMapBuffer(GL_ARRAY_BUFFER, GL_WRITE_ONLY)
    elements = glMapBuffer(GL_ELEMENT_ARRAY_BUFFER, GL_WRITE_ONLY)

    # ptr = Ptr{GLfloat}(vertices)
    # @show unsafe_load(ptr, 1), unsafe_load(ptr, 2), unsafe_load(ptr, 3), unsafe_load(ptr, 4)
    # ptr = Ptr{GLushort}(elements)
    # @show unsafe_load(ptr, 1), unsafe_load(ptr, 2), unsafe_load(ptr, 3), unsafe_load(ptr, 4)

    # fill convert configuration
    cfg = nk_set_convert_config(anti_alias, dev.null)

    # setup buffers to load vertices and elements
    vbo_buffer = nk_create_buffer()
    ebo_buffer = nk_create_buffer()
    GC.@preserve vbo_buffer ebo_buffer cfg begin
        nk_buffer_init_fixed(vbo_buffer, vertices, max_vertex_buffer)
        nk_buffer_init_fixed(ebo_buffer, elements, max_element_buffer)
        res = nk_convert(glfw.ctx, dev.cmds, vbo_buffer, ebo_buffer, cfg)
        @assert res == NK_CONVERT_SUCCESS "convert failed!"
    end

    # ptr = Ptr{GLfloat}(vertices)
    # @show unsafe_load(ptr, 1), unsafe_load(ptr, 2), unsafe_load(ptr, 3), unsafe_load(ptr, 4)
    # ptr = Ptr{GLushort}(elements)
    # @show unsafe_load(ptr, 1), unsafe_load(ptr, 2), unsafe_load(ptr, 3), unsafe_load(ptr, 4)

    glUnmapBuffer(GL_ARRAY_BUFFER)
    glUnmapBuffer(GL_ELEMENT_ARRAY_BUFFER)

    # iterate over and execute each draw command
    offset = Ptr{nk_draw_index}(0)
    draw_cmd = nk__draw_begin(glfw.ctx, dev.cmds)
    while draw_cmd != C_NULL
        elem_count_ref = Ref{UInt32}(0)
        clip_rect_ref = Ref{nk_rect}()
        texture_ref = Ref{nk_handle}()
        nk_unpack_draw_command(draw_cmd, elem_count_ref, clip_rect_ref, texture_ref)
        elem_count = elem_count_ref[]
        clip_rect = clip_rect_ref[]
        texture = texture_ref[]
        elem_count == 0 && continue
        glBindTexture(GL_TEXTURE_2D, texture.id)
        glScissor(
            GLint(clip_rect.x * glfw.fb_scale.x),
            GLint((glfw.height - (clip_rect.y + clip_rect.h)) * glfw.fb_scale.y),
            GLint(clip_rect.w * glfw.fb_scale.x),
            GLint(clip_rect.h * glfw.fb_scale.y))
        glDrawElements(GL_TRIANGLES, GLsizei(elem_count), GL_UNSIGNED_SHORT, offset)
        offset += elem_count * Core.sizeof(nk_draw_index)
        draw_cmd = nk__draw_next(draw_cmd, dev.cmds, glfw.ctx)
    end
    nk_clear(glfw.ctx)
    nk_buffer_free(vbo_buffer)
    nk_buffer_free(ebo_buffer)
    # reset OpenGL state
    glUseProgram(0)
    glBindBuffer(GL_ARRAY_BUFFER, 0)
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0)
    glBindVertexArray(0)
    glDisable(GL_BLEND)
    glDisable(GL_SCISSOR_TEST)
end

function nk_glfw3_new_frame()
    ctx = glfw.ctx
    win = glfw.win

    glfw.width, glfw.height = GLFW.GetWindowSize(win)
    glfw.display_width, glfw.display_height = GLFW.GetFramebufferSize(win)
    glfw.fb_scale = nk_vec2(glfw.display_width/glfw.width, glfw.display_height/glfw.height)

    nk_input_begin(ctx)
    for c in glfw.text
        nk_input_unicode(ctx, c)
    end

    nk_input_key(ctx, NK_KEY_DEL, GLFW.GetKey(win, GLFW.KEY_DELETE) == GLFW.PRESS)
    nk_input_key(ctx, NK_KEY_ENTER, GLFW.GetKey(win, GLFW.KEY_ENTER) == GLFW.PRESS)
    nk_input_key(ctx, NK_KEY_TAB, GLFW.GetKey(win, GLFW.KEY_TAB) == GLFW.PRESS)
    nk_input_key(ctx, NK_KEY_BACKSPACE, GLFW.GetKey(win, GLFW.KEY_BACKSPACE) == GLFW.PRESS)
    nk_input_key(ctx, NK_KEY_UP, GLFW.GetKey(win, GLFW.KEY_UP) == GLFW.PRESS)
    nk_input_key(ctx, NK_KEY_DOWN, GLFW.GetKey(win, GLFW.KEY_DOWN) == GLFW.PRESS)
    nk_input_key(ctx, NK_KEY_TEXT_START, GLFW.GetKey(win, GLFW.KEY_HOME) == GLFW.PRESS)
    nk_input_key(ctx, NK_KEY_TEXT_END, GLFW.GetKey(win, GLFW.KEY_END) == GLFW.PRESS)
    nk_input_key(ctx, NK_KEY_SCROLL_START, GLFW.GetKey(win, GLFW.KEY_HOME) == GLFW.PRESS)
    nk_input_key(ctx, NK_KEY_SCROLL_END, GLFW.GetKey(win, GLFW.KEY_END) == GLFW.PRESS)
    nk_input_key(ctx, NK_KEY_SCROLL_DOWN, GLFW.GetKey(win, GLFW.KEY_PAGE_DOWN) == GLFW.PRESS)
    nk_input_key(ctx, NK_KEY_SCROLL_UP, GLFW.GetKey(win, GLFW.KEY_PAGE_UP) == GLFW.PRESS)
    nk_input_key(ctx, NK_KEY_SHIFT, GLFW.GetKey(win, GLFW.KEY_LEFT_SHIFT) == GLFW.PRESS ||
                                    GLFW.GetKey(win, GLFW.KEY_RIGHT_SHIFT) == GLFW.PRESS)

    if GLFW.GetKey(win, GLFW.KEY_LEFT_CONTROL) == GLFW.PRESS ||
       GLFW.GetKey(win, GLFW.KEY_RIGHT_CONTROL) == GLFW.PRESS
        nk_input_key(ctx, NK_KEY_COPY, GLFW.GetKey(win, GLFW.KEY_C) == GLFW.PRESS)
        nk_input_key(ctx, NK_KEY_PASTE, GLFW.GetKey(win, GLFW.KEY_V) == GLFW.PRESS)
        nk_input_key(ctx, NK_KEY_CUT, GLFW.GetKey(win, GLFW.KEY_X) == GLFW.PRESS)
        nk_input_key(ctx, NK_KEY_TEXT_UNDO, GLFW.GetKey(win, GLFW.KEY_Z) == GLFW.PRESS)
        nk_input_key(ctx, NK_KEY_TEXT_REDO, GLFW.GetKey(win, GLFW.KEY_R) == GLFW.PRESS)
        nk_input_key(ctx, NK_KEY_TEXT_WORD_LEFT, GLFW.GetKey(win, GLFW.KEY_LEFT) == GLFW.PRESS)
        nk_input_key(ctx, NK_KEY_TEXT_WORD_RIGHT, GLFW.GetKey(win, GLFW.KEY_RIGHT) == GLFW.PRESS)
        nk_input_key(ctx, NK_KEY_TEXT_LINE_START, GLFW.GetKey(win, GLFW.KEY_B) == GLFW.PRESS)
        nk_input_key(ctx, NK_KEY_TEXT_LINE_END, GLFW.GetKey(win, GLFW.KEY_E) == GLFW.PRESS)
    else
        nk_input_key(ctx, NK_KEY_LEFT, GLFW.GetKey(win, GLFW.KEY_LEFT) == GLFW.PRESS)
        nk_input_key(ctx, NK_KEY_RIGHT, GLFW.GetKey(win, GLFW.KEY_RIGHT) == GLFW.PRESS)
        nk_input_key(ctx, NK_KEY_COPY, 0)
        nk_input_key(ctx, NK_KEY_PASTE, 0)
        nk_input_key(ctx, NK_KEY_CUT, 0)
        nk_input_key(ctx, NK_KEY_SHIFT, 0)
    end

    x, y = GLFW.GetCursorPos(win)
    x, y = round(Int, x), round(Int, y)
    nk_input_motion(ctx, x, y)
    nk_input_button(ctx, NK_BUTTON_LEFT, x, y, GLFW.GetMouseButton(win, GLFW.MOUSE_BUTTON_LEFT) == GLFW.PRESS)
    nk_input_button(ctx, NK_BUTTON_MIDDLE, x, y, GLFW.GetMouseButton(win, GLFW.MOUSE_BUTTON_MIDDLE) == GLFW.PRESS)
    nk_input_button(ctx, NK_BUTTON_RIGHT, x, y, GLFW.GetMouseButton(win, GLFW.MOUSE_BUTTON_RIGHT) == GLFW.PRESS)
    dx, dy = round(Int, glfw.double_click_pos.x), round(Int, glfw.double_click_pos.y)
    nk_input_button(ctx, NK_BUTTON_DOUBLE, dx, dy, glfw.is_double_click_down)
    nk_input_scroll(ctx, glfw.scroll)
    nk_input_end(ctx)

    empty!(glfw.text)
    glfw.scroll = nk_vec2(0,0)
end

function nk_glfw3_shutdown()
    nk_font_atlas_clear(glfw.atlas)
    nk_free(glfw.ctx)
    nk_glfw3_device_destroy()
end
