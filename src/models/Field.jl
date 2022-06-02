module Models 

using Stipple
@reactive mutable struct Field <: ReactiveModel
    x::R{String} = "z1231z"
end

export Field

end