require 'spec_helper'

describe(Task) do

  describe(".all") do
    it("is empty at first") do
      expect(Task.all()).to(eq([]))
    end
  end

  describe("#==") do
    it("is the same task if it has the scame description") do
      task1 = Task.new(description: "learn this", list_id: 1)
      task2 = Task.new(description: "learn this", list_id: 1)
      expect(task1).to(eq(task2))
    end
  end


  describe("#save") do
    it("adds a task to the array of saved tasks") do
      test_task = Task.new(description: "wash the lion", list_id: 1)
      test_task.save()
      expect(Task.all()).to(eq([test_task]))
    end
  end

  describe("#list_id") do
    it("lets you read the list ID out") do
      test_task = Task.new(description: "blah blah", list_id: 1)
      expect(test_task.list_id()).to(eq(1))
    end
  end

  describe("#description") do
    it("lets you read the description out") do
      test_task = Task.new(description: "blah blah", list_id: 1)
      expect(test_task.description()).to(eq("blah blah"))
    end
  end
  
end
