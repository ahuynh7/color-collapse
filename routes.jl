using Genie.Router, Genie.Renderer
using Stipple, Stipple.Elements, Stipple.Layout
using StippleUI

include("src/models/Field.jl")

using .Models
  
function ui(model)
	page(model, title="Color Collapse", [
			span("", @text(:x))
		]
	)
end

route("/") do
	Field |> init |> ui |> html
end 