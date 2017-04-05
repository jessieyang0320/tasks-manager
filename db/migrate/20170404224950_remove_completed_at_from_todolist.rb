class RemoveCompletedAtFromTodolist < ActiveRecord::Migration[5.0]
  def change
    remove_column :todolists, :completed_at, :datetime
  end
end
