class TodoList
    def initialize
        @to_do_list = []
    end
  
    def add(todo) # todo is an instance of Todo
        fail "Not an instance of Todo" unless todo.class == Todo
        @to_do_list << todo
    end
  
    def incomplete
      return @to_do_list.filter { |todo| todo.done? == false}
    end
  
    def complete
        return @to_do_list.filter { |todo| todo.done? == true}
    end
  
    def give_up!
        return @to_do_list.map { |todo| todo.mark_done!}
    end
  end