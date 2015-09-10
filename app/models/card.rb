class Card < ActiveRecord::Base

  has_attached_file :image, :styles => { :medium => "300x300#", :thumb => "100x100#" }, :default_url => "missing_product_:style.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  validates :style, :price, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}

end
