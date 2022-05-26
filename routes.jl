using Genie.Router

route("/") do
	serve_static_file("welcome.html")
end

route("/hello") do
	"asds"
end