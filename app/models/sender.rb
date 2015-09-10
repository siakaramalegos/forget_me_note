class Sender < ActiveRecord::Base
  has_many :recipients
  belongs_to :user
end
