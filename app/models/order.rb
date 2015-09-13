class Order < ActiveRecord::Base
  belongs_to :sender
  has_many :line_items, dependent: :destroy
  validates :street, :city, :state, :zip, :sender_id, presence: true

  PAYMENT_TYPES = ["Credit Card", "PayPal", "Check"]
  validates :pay_type, inclusion: PAYMENT_TYPES
end

