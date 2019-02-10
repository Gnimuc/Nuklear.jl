module GLFWBackend

using InteractiveUtils
using ModernGL
using GLFW
using ..LibNuklear

# constants
const NK_GLFW_TEXT_MAX = 256
const NK_GLFW_DOUBLE_CLICK_LO = 0.02
const NK_GLFW_DOUBLE_CLICK_HI = 0.2
const NK_GLFW3_DEFAULT = 0
const NK_GLFW3_INSTALL_CALLBACKS = 1

export NK_GLFW3_DEFAULT, NK_GLFW3_INSTALL_CALLBACKS

include("types.jl")
export nk_glfw_vertex, nk_glfw_device, nk_glfw

include("callbacks.jl")
export nk_glfw3_char_callback, nk_gflw3_scroll_callback, nk_glfw3_mouse_button_callback

include("impl.jl")
export nk_glfw3_device_create, nk_glfw3_device_destroy, nk_glfw3_init, nk_glfw3_shutdown
export nk_glfw3_font_stash_begin, nk_glfw3_font_stash_end
export nk_glfw3_device_upload_atlas, nk_glfw3_render, nk_glfw3_new_frame
export nk_glfw3_create_texture, nk_glfw3_update_texture, nk_glfw3_delete_texture, create_nk_image

function __init__()
    global glfw = nk_glfw()
end
export glfw

end # module
