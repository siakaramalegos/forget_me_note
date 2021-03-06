class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.references :card, index: true, foreign_key: true
      t.belongs_to :cart, index: true, foreign_key: true
      t.integer :quantity, default: 1
      t.decimal :price
      t.references :recipient, index: true, foreign_key: true
      t.text :message

      t.timestamps null: false
    end
  end
end
