#--------------------------------------------------------------------------------------------------#
#                                           tokenAmt.jl                                            #
#--------------------------------------------------------------------------------------------------#

using FixedPointDecimals
using Printf


#--------------------------------------------------------------------------------------------------#
#                                        amt <: PlainAmount                                        #
#--------------------------------------------------------------------------------------------------#

function numComps(s::AbstractString)::Union{Nothing,Tuple{Bool,Integer,Integer}}
    m = match(r"^(?<sig>[+-]?)(?<int>[0-9,]+)(?<fra>\.[0-9]*)?", s)
    if m != nothing
        𝚜, 𝚒, 𝚏 = m[:sig], m[:int], m[:fra][2:end]
        𝚜 = 𝚜 in ["", "+"] ? false : true
        𝚒 = parse(DEF.FixDecTy, 𝚒)
        if length(𝚏) > DEF.decimals
            𝚏, 𝚐 = 𝚏[1:DEF.decimals], 𝚏[DEF.decimals+1:DEF.decimals+1]
            𝚏 = parse(DEF.FixDecTy, 𝚏)
            if 𝚐 in "56789"
                𝚏 += 1
            end
        else
            𝚏 = parse(DEF.FixDecTy, 𝚏)
        end
        return 𝚜, 𝚒, 𝚏
    else
        return Nothing()
    end
end


"""
`struct amt <: PlainAmount`\n
Plain, uniform precision, uniform underlying data type, fixed point decimal "amt" amount.
"""
struct amt <: PlainAmount
    val::FixedDecimal{DEF.FixDecTy, DEF.decimals}
    function amt(s::AbstractString)
        C = numComps(s)
        @assert(C != nothing, "Unable to parse arg into a number!")
        s, i, f = C
        v = FixedDecimal{DEF.FixDecTy, DEF.decimals}(f//DENO) + i
        return s ? new(-v) : new(v)
    end
end

# export
export amt

# Base functions to add methods
import Base: repr, show, +, -, *, /, inv, abs


