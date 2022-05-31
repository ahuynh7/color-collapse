using Genie.Router, Genie.Renderer
using Stipple, Stipple.Layout
using StippleUI

route("/") do
	serve_static_file("index.html")
end

@reactive mutable struct Name <: ReactiveModel
	name::R{String} = "World!"
end
  
function ui(model)
	page( model, class="container", [
		h1([
			"Hello "
			span("", @text(:name))
		])
  
		p([
			"What is your name? "
			input("", placeholder="Type your name", @bind(:name))
		])
	])
end

route("/hello") do
	model = Name |> init |> ui |> html
end