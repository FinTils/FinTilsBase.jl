#--------------------------------------------------------------------------------------------------#
#                                           constant.jl                                            #
#--------------------------------------------------------------------------------------------------#

"""
`const DEF`\n
Constant definitions for the package.
"""
const DEF = (decimals = 10,
             FixDecTy = Int128,)

# Resulting denominator
DENO = DEC.FixDecTy(10)^DEF.decimals

# export
export DEF


