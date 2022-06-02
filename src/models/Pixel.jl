module Models

using Stipple

@reactive mutable struct Pixel <: ReactiveModel
    red::R{Int16} = 255
    green::R{Int16} = 255
    blue::R{Int16} = 255
end

export Pixel

end