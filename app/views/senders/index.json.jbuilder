json.array!(@senders) do |sender|
  json.extract! sender, :id, :first_name, :last_name, :email, :dob, :address, :city, :state, :zip, :phone
  json.url sender_url(sender, format: :json)
end
