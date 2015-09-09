class CreateRecipients < ActiveRecord::Migration
  def change
    create_table :recipients do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.date :dob
      t.date :anniversary
      t.string :address
      t.string :city
      t.string :state
      t.string :zip

      t.timestamps null: false
    end
  end
end
