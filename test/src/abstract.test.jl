#--------------------------------------------------------------------------------------------------#
#                                         abstract.test.jl                                         #
#--------------------------------------------------------------------------------------------------#

@testset "abstract.test.jl                                                " begin
    # --- Generalized abstract type tests
    for 𝑠 in [:FINTILS, :AbstractTokenAmount]
        @test isdefined(FinTilsBase, 𝑠)         # Is it defined in the module?
        @test isdefined(Main, 𝑠)                # Is is exported?
        @test hasdoc(FinTilsBase, 𝑠)            # Is it documented?
        @test eval(𝑠) isa DataType              # Is it a DataType
        if 𝑠 == :FINTILS                        @test eval(𝑠) in subtypes(Any)
        elseif 𝑠 == :AbstractTokenAmount        @test eval(𝑠) in subtypes(FINTILS)  
        end
    end
end


