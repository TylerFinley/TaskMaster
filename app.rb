require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/to_do")

get("/") do
  @tasks = Todo.all()
  erb(:index)
end

post("/tasks") do
  description = params.fetch("description")
  task = Todo.new(description)
  task.save()
  erb(:success)
end

get("/clear") do
  @tasks = Todo.clear()
  erb(:index)
end
