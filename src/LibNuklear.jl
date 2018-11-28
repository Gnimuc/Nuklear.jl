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

# include("ctypes.jl")
# export Ctm, Ctime_t, Cclock_t

include(joinpath(@__DIR__, "..", "gen", "libnuklear_common.jl"))
include(joinpath(@__DIR__, "..", "gen", "libnuklear_api.jl"))

foreach(names(@__MODULE__, all=true)) do s
    if startswith(string(s), "nk_")
        @eval export $s
    end
end

end # module
