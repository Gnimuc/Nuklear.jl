using Nuklear.LibNuklear
using Test

@testset "trivial" begin
    ctx = nk_create_context()
    GC.@preserve ctx begin
        @test Bool(nk_init_default(ctx, C_NULL))
        nk_free(ctx)
    end
end
