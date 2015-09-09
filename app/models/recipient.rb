class Recipient < ActiveRecord::Base
  belongs_to :sender
end
