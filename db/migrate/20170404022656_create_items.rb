class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :conteng
      t.references :todolist, foreign_key: true

      t.timestamps
    end
  end
end
