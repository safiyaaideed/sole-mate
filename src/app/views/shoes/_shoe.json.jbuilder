json.extract! shoe, :id, :name, :description, :text, :price, :availability, :category, :user_id, :created_at, :updated_at
json.url shoe_url(shoe, format: :json)
