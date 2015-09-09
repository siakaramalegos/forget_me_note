json.array!(@recipients) do |recipient|
  json.extract! recipient, :id, :first_name, :last_name, :email, :dob, :anniversary, :address, :city, :state, :zip
  json.url recipient_url(recipient, format: :json)
end
