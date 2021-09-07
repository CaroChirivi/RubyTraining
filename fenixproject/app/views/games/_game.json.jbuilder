json.extract! game, :id, :name, :price, :plaform, :description, :created_at, :updated_at
json.url game_url(game, format: :json)
