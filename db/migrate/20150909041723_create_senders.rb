class CreateSenders < ActiveRecord::Migration
  def change
    create_table :senders do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.date :dob
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone

      t.timestamps null: false
    end
  end
end
