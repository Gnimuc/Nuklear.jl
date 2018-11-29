module Nuklear

include("CEnum.jl")
using .CEnum

<<<<<<< HEAD
include("ctypes.jl")
export Ctm, Ctime_t, Cclock_t

include(joinpath(@__DIR__, "..", "gen", "libnuklear_common.jl"))

# using ModernGL
# using GLFW
#
# include("backend/glfw_gl4.jl")
# export nk_glfw3_init, nk_glfw3_create_texture
=======
include("backend/GLFW/GLFWBackend.jl")
using .GLFWBackend
>>>>>>> d886dff... It's working.

end # module
