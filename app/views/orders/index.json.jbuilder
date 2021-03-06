json.array!(@orders) do |order|
  json.extract! order, :id, :sender_id, :street, :city, :state, :zip, :pay_type
  json.url order_url(order, format: :json)
end
