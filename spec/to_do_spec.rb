require('rspec')
require('to_do')

describe(Todo) do
  describe("#description") do
    it("lets you give it a description") do
      to_do_task = Todo.new("buy milk")
      expect(to_do_task.description()).to(eq("buy milk"))
    end
  end
end
