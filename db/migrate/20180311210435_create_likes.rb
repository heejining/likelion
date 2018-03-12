class CreateLikes < ActiveRecord::Migration[5.1]
  def change
    create_table :likes do |t|
      t.string :user_id
      t.string :product_id

      t.timestamps
    end
  end
end