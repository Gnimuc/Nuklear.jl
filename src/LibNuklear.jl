module LibNuklear

import Libdl

# Load in `deps.jl`, complaining if it does not exist
const depsjl_path = joinpath(@__DIR__, "..", "deps", "deps.jl")
if !isfile(depsjl_path)
    error("Nuklear was not build properly. Please run Pkg.build(\"Nuklear\").")
end
include(depsjl_path)
# Module initialization function
function __init__()
    check_deps()
end

include("CEnum.jl")
using .CEnum

include("ctypes.jl")
export Ctm, Ctime_t, Cclock_t

include(joinpath(@__DIR__, "..", "gen", "libnuklear_common.jl"))
include(joinpath(@__DIR__, "..", "gen", "libnuklear_api.jl"))
include(joinpath(@__DIR__, "..", "gen", "helper_api.jl"))

const nk_false = 0
const nk_true = 1
export nk_false, nk_true

foreach(names(@__MODULE__, all=true)) do s
    if startswith(string(s), "nk_") || startswith(string(s), "NK_")
        @eval export $s
    end
end

end # module
