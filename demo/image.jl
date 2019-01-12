using Nuklear
using Nuklear.LibNuklear
using Nuklear.GLFWBackend
using GLFW, ModernGL
using Images, ImageMagick

const WINDOW_WIDTH = 800
const WINDOW_HEIGHT = 600

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
nk_glfw3_font_stash_begin()
nk_glfw3_font_stash_end()

# creat texture for image drawing
img_width, img_height = 256, 256
tex_idx = nk_glfw3_create_texture(img_width, img_height)
image = rand(GLubyte, 4, img_width, img_height)

juliatan = load(joinpath(@__DIR__, "julia-tan.png")) |> transpose
juliatan_width, juliatan_height = size(juliatan)
juliatan_idx = nk_glfw3_create_texture(juliatan_width, juliatan_height,format=GL_RGBA, type=GL_FLOAT)
juliatan = channelview(juliatan)
juliatan = Array{Float32}(juliatan)

# states
const EASY = 0
const HARD = 1

op = EASY
property = Ref{Cint}(20)
bg = nk_colorf(0.10, 0.18, 0.24, 1.0)
while !GLFW.WindowShouldClose(win)
    global op; global bg; global ctx; global image; global juliatan;
    global tex_idx; global img_width; global img_height;

    GLFW.PollEvents()
    nk_glfw3_new_frame()

    if Bool(nk_begin(ctx, "Random Color", nk_rect(500, 0, 256, 256),
            NK_WINDOW_BORDER|NK_WINDOW_MOVABLE|NK_WINDOW_SCALABLE|
            NK_WINDOW_MINIMIZABLE|NK_WINDOW_TITLE))
        canvas = nk_window_get_canvas(ctx)
        region = nk_window_get_content_region(ctx)
        nk_glfw3_update_texture(tex_idx, image, img_width, img_height)
        img = Ref(create_nk_image(tex_idx))
        nk_draw_image(canvas, region, img, nk_rgba(255, 255, 255, 255))
    end
    nk_end(ctx)

    if Bool(nk_begin(ctx, "Julia-tan", nk_rect(0, 0, 500, 500),
            NK_WINDOW_BORDER|NK_WINDOW_MOVABLE|NK_WINDOW_SCALABLE|
            NK_WINDOW_MINIMIZABLE|NK_WINDOW_TITLE))
        canvas = nk_window_get_canvas(ctx)
        region = nk_window_get_content_region(ctx)
        nk_glfw3_update_texture(juliatan_idx, juliatan, juliatan_width, juliatan_height, format=GL_RGBA, type=GL_FLOAT)
        img = Ref(create_nk_image(juliatan_idx))
        nk_draw_image(canvas, region, img, nk_rgba(255, 255, 255, 255))
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
