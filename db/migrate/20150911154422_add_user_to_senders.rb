class AddUserToSenders < ActiveRecord::Migration
  def change
    add_reference :senders, :user, index: true, foreign_key: true
  end
end
