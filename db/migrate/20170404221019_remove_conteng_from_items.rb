class RemoveContengFromItems < ActiveRecord::Migration[5.0]
  def change
    remove_column :items, :conteng, :string
  end
end
