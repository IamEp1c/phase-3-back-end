class Task < ActiveRecord::Base
    belongs_to :list


    def toggle_complete
        self.update(completed: !completed)
    end
end