#--------------------------------------------------------------------------------------------------#
#                                         abstract.test.jl                                         #
#--------------------------------------------------------------------------------------------------#

@testset "abstract.test.jl                                                " begin
    @test FINTILS === FinTilsBase.FINTILS   # is exported?
    @test FINTILS isa Any                   # is placed under Any?
    @test FINTILS in subtypes(Any)          # directly so?
end


