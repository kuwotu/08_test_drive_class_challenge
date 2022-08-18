class Todo
    def initialize(task) # task is a string
        fail "The task given is not a string" unless task.is_a?(String)
      @to_do = {}
      @task = task
    end
  
    def task
      
      return @task
    end
  
    def mark_done!
      @to_do[@task] = "done"
    end
  
    def done?
        
      if @to_do[@task] === "done"
        return true
      else return false
      end

    end
  end