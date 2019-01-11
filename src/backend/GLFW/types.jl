struct nk_glfw_vertex
    position::NTuple{2,Cfloat}
    uv::NTuple{2,Cfloat}
    col::NTuple{4,nk_byte}
end

mutable struct nk_glfw_device
    cmds::Ptr{nk_buffer}
    null::nk_draw_null_texture
    vbo::GLuint
    vao::GLuint
    ebo::GLuint
    prog::GLuint
    vert_shdr::GLuint
    frag_shdr::GLuint
    attrib_pos::GLint
    attrib_uv::GLint
    attrib_col::GLint
    uniform_tex::GLint
    uniform_proj::GLint
    font_tex::Cint
    tex_ids::Vector{Cuint}
    tex_count::Int
    nk_glfw_device() = new()
end

mutable struct nk_glfw
    win::GLFW.Window
    width::Cint
    height::Cint
    display_width::Cint
    display_height::Cint
    ogl::nk_glfw_device
    ctx::Ptr{nk_context}
    atlas::Ptr{nk_font_atlas}
    fb_scale::nk_vec2
    text::Vector{Char}
    text_len::Cint
    scroll::nk_vec2
    last_button_click::Cdouble
    is_double_click_down::Bool
    double_click_pos::nk_vec2
    nk_glfw() = new()
end
