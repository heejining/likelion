class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :user
      t.string :name
      t.integer :likes, :default => 0
      t.string :description
      t.string :images
      t.string :video
      t.string :category
      t.boolean :funding
      t.float :goal_amount
      t.datetime :due_date

      t.timestamps
    end
  end
end
