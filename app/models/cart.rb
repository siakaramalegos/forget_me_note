class Cart < ActiveRecord::Base
  has_many :line_items, dependent: :destroy

  def subtotal
    line_items.to_a.sum { |item| item.total_price }
  end
end


class Cart < ActiveRecord::Base
  has_many :line_items, dependent: :destroy

  def add_card(card_id)
    card = Card.find(card_id)
    current_item = line_items.find_by(card_id: card_id)
    if current_item
      current_item.quantity += 1
    else
      current_item = line_items.build(card: card, price: card.price)
    end
    current_item
  end

end