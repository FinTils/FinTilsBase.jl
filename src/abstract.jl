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
#                               Second-Level FinTils abstract types                                #
#--------------------------------------------------------------------------------------------------#

"""
`abstract type AbstractTokenAmount <: FINTILS end`\n
Abstract type for all token amount types.
"""
abstract type AbstractTokenAmount <: FINTILS end

# export
export AbstractTokenAmount


