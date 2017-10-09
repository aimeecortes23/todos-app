class AddPriorityToSubtasks < ActiveRecord::Migration[5.1]
  def change
    add_column :subtasks, :priority, :string
  end
end
