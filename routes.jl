using Genie.Router, Genie.Renderer
using Stipple, Stipple.Elements, Stipple.Layout
using StippleUI

include("src/models/Field.jl"); using .Models
include("src/models/Pixel.jl"); using .Models

function ui(model)
	page(model, title="Color Collapse", [
			span("", @text(:x))
		]
	)
end

route("/") do
	model = init(Field, debounce=0)
	
	model |> ui |> html		#returns the final page rendering
end