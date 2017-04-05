class AddCompletedAtToTodolist < ActiveRecord::Migration[5.0]
  def change
    add_column :todolists, :completed_at, :datetime
  end
end
