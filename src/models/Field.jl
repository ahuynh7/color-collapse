module FieldModel

using Stipple

include("Pixel.jl"); using .PixelModel: Pixel

@reactive mutable struct Field <: ReactiveModel
    x::R{Int8} = 10
    y::R{Int8} = 10
    grid::R{Matrix{Union{Pixel, Nothing}}} = Matrix{Union{Pixel, Nothing}}(nothing, y, x)
end

export Field

end