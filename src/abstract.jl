#--------------------------------------------------------------------------------------------------#
#                                           abstract.jl                                            #
#--------------------------------------------------------------------------------------------------#

#--------------------------------------------------------------------------------------------------#
#                                 Top-Level FinTils abstract type                                  #
#--------------------------------------------------------------------------------------------------#

"""
`abstract type FINTILS <: Any end`\n
Top-Level FinTils abstract type, under which every custom FinTils type must be hooked into.
"""
abstract type FINTILS <: Any end

# export
export FINTILS


#--------------------------------------------------------------------------------------------------#
#                                    AbstractTokenAmount branch                                    #
#--------------------------------------------------------------------------------------------------#

"""
`abstract type AbstractTokenAmount <: FINTILS end`\n
Abstract type for all token amount types.
"""
abstract type AbstractTokenAmount <: FINTILS end

"""
`abstract type PlainAmount <: AbstractTokenAmount end`\n
Abstract type for all plain (uniform-precision) amount types.
"""
abstract type PlainAmount <: AbstractTokenAmount end

# export
export AbstractTokenAmount, PlainAmount


