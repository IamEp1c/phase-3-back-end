class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :description
      t.boolean :completed
      t.integer :priority
      t.timestamps
    end
  end
end
