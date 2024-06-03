json.extract! ingrediente, :id, :nome, :giacenza, :created_at, :updated_at
json.url ingrediente_url(ingrediente, format: :json)
