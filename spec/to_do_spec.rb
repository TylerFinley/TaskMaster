require('rspec')
require('to_do')

describe(Todo) do
  describe("#description") do
    it("lets you give it a description") do
      to_do_task = Todo.new("buy milk")
      expect(to_do_task.description()).to(eq("buy milk"))
    end
  end

    describe('.all') do
      it('is empty at first') do
        expect(Todo.all()).to(eq([]))
      end
    end

    describe("#save") do
      it("adds a task to the array of saved tasks") do
        test_task = Todo.new("throw the old milk out")
        test_task.save()
        expect(Todo.all()).to(eq([test_task]))
      end
    end
    describe(".clear") do
      it("empties out all of the saved tasks") do
        Todo.new('recycle the empty milk carton')
        Todo.clear()
        expect(Todo.all()).to(eq([]))
      end
  end
end
