class TodoItem < ApplicationRecord
  belongs_to :todo_list


  def complete?
    completed
  end

  def toggle
    self.completed = !completed
    self.save!
  end
end
