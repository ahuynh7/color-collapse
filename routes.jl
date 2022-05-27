using Genie.Router, Stipple

route("/") do
	serve_static_file("index.html")
end

route("/hello") do
	nothing
end