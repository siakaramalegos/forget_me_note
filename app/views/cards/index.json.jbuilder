json.array!(@cards) do |card|
  json.extract! card, :id, :style, :quantity, :price, :description
  json.url card_url(card, format: :json)
end
