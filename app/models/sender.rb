class Sender < ActiveRecord::Base
  has_many :recipients
end
