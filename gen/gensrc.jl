using Clang
using Clang.LibClang
using C2Julia

# don't forgot to add these flags in the front of the header, the most easy way is to
# do a manually copy-paste:
# define NK_INCLUDE_FIXED_TYPES
# define NK_INCLUDE_DEFAULT_ALLOCATOR
# define NK_INCLUDE_STANDARD_IO
# define NK_INCLUDE_VERTEX_BUFFER_OUTPUT
# define NK_INCLUDE_FONT_BAKING
# define NK_INCLUDE_DEFAULT_FONT
srcname = "nuklear_window.c"
NUKLEAR_H = joinpath(@__DIR__, "nuklear", "nuklear.h") |> normpath
NUKLEAR_INTERNAL = joinpath(@__DIR__, "nuklear", "nuklear_internal.h") |> normpath
NUKLEAR_SRC = joinpath(@__DIR__, "nuklear", srcname) |> normpath

tu = parse_header(NUKLEAR_SRC, includes=[LLVM_INCLUDE])
root_cursor = getcursor(tu)

# write output
srcfilename = srcname[1:end-2]*".jl"
out_file = joinpath(@__DIR__, "..", "src", srcfilename)
out_stream = open(out_file, "w")

for c in children(root_cursor)
    child_name = name(c)
    child_filename = filename(c)
    startswith(child_name, "__") && continue
    child_filename != NUKLEAR_SRC && continue
    try
        ex = translate(c).expr
        println(out_stream, ex)
        println(out_stream, "")
    catch err
        @show c
    end
end
close(out_stream)
