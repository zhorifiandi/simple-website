json.extract! item, :id, :image, :comments, :created_at, :updated_at
json.url item_url(item, format: :json)
