class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :sender, index: true, foreign_key: true
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.string :pay_type

      t.timestamps null: false
    end
  end
end
