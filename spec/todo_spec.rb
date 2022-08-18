# 1

# kevwe_list = Todo.new("Buy a new car")
# kevwe_list.task => "Buy a new car"

# 2

# kevwe_list = Todo.new("Top up the house electric")
# kevwe_list.mark_done!
# kevwe_list.done> =>

# 3

# kevwe_list = Todo.new("Change the door locks")
# kevwe_list.done> => false

# 4

# kevwe_list = Todo.new(1234) => Throws error as task is not a string

require "todo"

RSpec.describe Todo do
    it "#adds a task and returns it as a string" do
        kevwe_list = Todo.new("Buy a new car")
        result = kevwe_list.task
        expect(result).to eq "Buy a new car"
    end

    it "#marks the task as done" do
        kevwe_list = Todo.new("Top up the house electric")
        kevwe_list.mark_done!
        result = kevwe_list.done?
        expect(result).to eq true
    end

    it "#returns false if done? is called and the task is not done" do
        kevwe_list = Todo.new("Change the door locks")
        result = kevwe_list.done?
        expect(result).to eq false
    end

    it "fails if the task given is not a string " do
        expect {kevwe_list = Todo.new(1234)}.to raise_error "The task given is not a string"
    end

end



