json.extract! client, :id, :name, :city, :email, :created_at, :updated_at
json.url client_url(client, format: :json)
