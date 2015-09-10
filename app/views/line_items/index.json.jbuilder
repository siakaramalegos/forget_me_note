json.array!(@line_items) do |line_item|
  json.extract! line_item, :id, :card_id, :cart_id, :quantity, :price, :recipient_id, :message
  json.url line_item_url(line_item, format: :json)
end
