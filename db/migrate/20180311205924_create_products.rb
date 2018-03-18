class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.integer :user_id, null: false
      t.string :name, null: false
      t.integer :likes, :default => 0
      t.string :description, null: false
      t.string :images
      t.string :video
      t.string :category, null: false
      t.boolean :funding
      t.float :goal_amount
      t.datetime :due_date

      t.timestamps
    end
  end
end
