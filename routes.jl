using Genie.Router, Genie.Renderer
using Stipple, Stipple.Elements, Stipple.Layout
using StippleUI

import Genie.Renderer.Html: html_to_julia

import Models: Field
  
function ui(model)
	page(model, title="Color Collapse", [
			h1([
				"Hello "
			])
		]
	)
end

route("/") do
	Field |> init |> ui |> html
end 