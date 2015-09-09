class Card < ActiveRecord::Base
  has_many :recipients
end
