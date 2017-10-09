class AddTaskToSubtasks < ActiveRecord::Migration[5.1]
  def change
    add_reference :subtasks, :task, foreign_key: true
  end
end
