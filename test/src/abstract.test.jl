#--------------------------------------------------------------------------------------------------#
#                                         abstract.test.jl                                         #
#--------------------------------------------------------------------------------------------------#

@testset "abstract.test.jl                                                " begin
    @test isdefined(FinTilsBase, :FINTILS)  # Is it defined in the module?
    @test isdefined(Main, :FINTILS)         # Is is exported?
    @test hasdoc(FinTilsBase, :FINTILS)     # Is it documented?
    @test FINTILS isa Any                   # is placed under Any?
    @test FINTILS in subtypes(Any)          # directly so?
end


