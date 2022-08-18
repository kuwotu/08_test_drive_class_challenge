# 1 

# january_2022 = TodoList.new
# monday_1st = Todo.new("Buy a new car")
# wednesday_3rd = Todo.new("Charge the key")
# friday_5th = Todo.new("Wash the clothes")
# wednesday_3rd.mark_done!
# january_2022.add(monday_1st)
# january_2022.add(wednesday_2nd)
# january_2022.add(friday_5th)
# january_2022.incomplete => [monday_1st, friday_5th]

require "todo"
require "todo_list"

RSpec.describe "To Do List Integration" do
    it "returns all incomplete tasks" do
    january_2022 = TodoList.new
    monday_1st = Todo.new("Buy a new car")
    wednesday_3rd = Todo.new("Charge the key")
    friday_5th = Todo.new("Wash the clothes")
    wednesday_3rd.mark_done!
    january_2022.add(monday_1st)
    january_2022.add(wednesday_3rd)
    january_2022.add(friday_5th)
    result = january_2022.incomplete
    expect(result).to eq [monday_1st, friday_5th]
    end

    it "returns all complete tasks" do
        january_2022 = TodoList.new
        monday_1st = Todo.new("Buy a new car")
        wednesday_3rd = Todo.new("Charge the key")
        friday_5th = Todo.new("Wash the clothes")
        wednesday_3rd.mark_done!
        january_2022.add(monday_1st)
        january_2022.add(wednesday_3rd)
        january_2022.add(friday_5th)
        result = january_2022.complete
        expect(result).to eq [wednesday_3rd]
        end

        it "marks all tasks as complete" do
            january_2022 = TodoList.new
            monday_1st = Todo.new("Buy a new car")
            wednesday_3rd = Todo.new("Charge the key")
            friday_5th = Todo.new("Wash the clothes")
            january_2022.add(monday_1st)
            january_2022.add(wednesday_3rd)
            january_2022.add(friday_5th)
            january_2022.give_up!
            result = january_2022.complete
            expect(result).to eq [monday_1st, wednesday_3rd, friday_5th]
            end

            it "fails" do
                january_2022 = TodoList.new
                expect{january_2022.add("Make the bed")}.to raise_error "Not an instance of Todo"
                end
end