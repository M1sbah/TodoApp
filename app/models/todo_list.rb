class TodoList < ApplicationRecord
  has_many :todo_items

  def badge_color
    case total_todos
    when 0
      'warning'
    when total_complete
      'success'
    else
      'primary'
    end
  end

  def status
    case total_todos
    when 0
      'new'
    when total_complete
      'completed'
    else
      'in-progress'
    end
  end

  def persent_complete
    return 0 if total_todos == 0
    ((total_complete.to_f/total_todos)*100).round
  end

  def total_complete
    todo_items.select {|item| item.complete?}.count
  end

  def total_todos
    todo_items.all.count
  end
end
