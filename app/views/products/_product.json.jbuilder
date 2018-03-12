json.extract! product, :id, :user, :name, :likes, :description, :images, :video, :category, :funding, :false/true, :goal_amount, :due_date, :created_at, :updated_at
json.url product_url(product, format: :json)
