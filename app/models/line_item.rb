class LineItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :card
  belongs_to :cart
  belongs_to :recipient

  def total_price
    price * quantity
  end

end
