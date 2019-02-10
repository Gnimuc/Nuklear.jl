using Nuklear
using Nuklear.LibNuklear
using Nuklear.GLFWBackend
using GLFW, ModernGL

const WINDOW_WIDTH = 1200
const WINDOW_HEIGHT = 800

const MAX_VERTEX_BUFFER = 512 * 1024
const MAX_ELEMENT_BUFFER = 128 * 1024

@static if Sys.isapple()
    const VERSION_MAJOR = 3
    const VERSION_MINOR = 3
end

@static if Sys.isapple()
    GLFW.WindowHint(GLFW.CONTEXT_VERSION_MAJOR, VERSION_MAJOR)
    GLFW.WindowHint(GLFW.CONTEXT_VERSION_MINOR, VERSION_MINOR)
    GLFW.WindowHint(GLFW.OPENGL_PROFILE, GLFW.OPENGL_CORE_PROFILE)
    GLFW.WindowHint(GLFW.OPENGL_FORWARD_COMPAT, GL_TRUE)
else
    GLFW.DefaultWindowHints()
end

# set up GLFW error callback
error_callback(err::GLFW.GLFWError) = @error "GLFW ERROR: code $(err.code) msg: $(err.description)"
GLFW.SetErrorCallback(error_callback)

# create window
win = GLFW.CreateWindow(WINDOW_WIDTH, WINDOW_HEIGHT, "Demo")
@assert win != C_NULL
GLFW.MakeContextCurrent(win)
glViewport(0, 0, WINDOW_WIDTH, WINDOW_HEIGHT)

# init context
ctx = nk_glfw3_init(win, NK_GLFW3_INSTALL_CALLBACKS, MAX_VERTEX_BUFFER, MAX_ELEMENT_BUFFER)

# init font
prefix = joinpath(@__DIR__, "extra_font")
nk_glfw3_font_stash_begin()
roboto = nk_font_atlas_add_from_file(glfw.atlas, joinpath(prefix, "Roboto-Bold.ttf"), 18, C_NULL)
nk_glfw3_font_stash_end()
roboto_handle = nk_get_font_handle(roboto)
nk_style_set_font(ctx, roboto_handle)

# states
const EASY = 0
const HARD = 1

op = EASY
property = Ref{Cint}(20)
bg = nk_colorf(0.10, 0.18, 0.24, 1.0)
while !GLFW.WindowShouldClose(win)
    global op
    global bg
    global ctx

    GLFW.PollEvents()
    nk_glfw3_new_frame()

    if Bool(nk_begin(ctx, "Demo", nk_rect(50, 50, 230, 250),
                     NK_WINDOW_BORDER|NK_WINDOW_MOVABLE|NK_WINDOW_SCALABLE|
                     NK_WINDOW_MINIMIZABLE|NK_WINDOW_TITLE))

        nk_layout_row_static(ctx, 30, 80, 1)
        nk_button_label(ctx, "button") == 1 && @show("button pressed")

        nk_layout_row_dynamic(ctx, 30, 2)
        Bool(nk_option_label(ctx, "easy", op == EASY)) && (op = EASY;)
        Bool(nk_option_label(ctx, "hard", op == HARD)) && (op = HARD;)

        nk_layout_row_dynamic(ctx, 25, 1)
        nk_property_int(ctx, "Compression:", 0, property, 100, 10, 1)

        nk_layout_row_dynamic(ctx, 20, 1)
        nk_label(ctx, "background:", NK_TEXT_LEFT)
        nk_layout_row_dynamic(ctx, 25, 1)
        if Bool(nk_combo_begin_color(ctx, nk_rgb_cf(bg), nk_vec2(nk_widget_width(ctx),400)))
            nk_layout_row_dynamic(ctx, 120, 1)
            bg = nk_color_picker(ctx, bg, NK_RGBA)
            nk_layout_row_dynamic(ctx, 25, 1)
            r = nk_propertyf(ctx, "#R:", 0, bg.r, 1.0, 0.01, 0.005)
            g = nk_propertyf(ctx, "#G:", 0, bg.g, 1.0, 0.01, 0.005)
            b = nk_propertyf(ctx, "#B:", 0, bg.b, 1.0, 0.01, 0.005)
            a = nk_propertyf(ctx, "#A:", 0, bg.a, 1.0, 0.01, 0.005)
            bg = nk_colorf(r, g, b, a)
            nk_combo_end(ctx)
        end
    end
    nk_end(ctx)

    # draw
    width, height = GLFW.GetWindowSize(win)
    glViewport(0, 0, width, height)
    glClear(GL_COLOR_BUFFER_BIT)
    glClearColor(bg.r, bg.g, bg.b, bg.a)
    nk_glfw3_render(NK_ANTI_ALIASING_ON, MAX_VERTEX_BUFFER, MAX_ELEMENT_BUFFER)
    GLFW.SwapBuffers(win)
end

nk_glfw3_shutdown()
GLFW.DestroyWindow(win)
