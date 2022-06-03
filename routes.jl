using Genie.Router, Genie.Renderer
using Stipple, Stipple.Elements, Stipple.Layout
using StippleUI

include("src/Models.jl"); using .Models: Field

function ui(model)
	page(model, title="Color Collapse", [
			span("", @text(:grid))
		]
	)
end

route("/") do
	model = init(Field, debounce=0)
	
	model |> ui |> html		#returns the final page rendering
end