json.extract! card, :id, :cardId, :name, :description, :created_at, :updated_at
json.url card_url(card, format: :json)
