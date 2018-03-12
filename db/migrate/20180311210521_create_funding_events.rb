class CreateFundingEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :funding_events do |t|
      t.string :user_id
      t.string :product_id
      t.float :amount
      t.datetime :datetime

      t.timestamps
    end
  end
end
