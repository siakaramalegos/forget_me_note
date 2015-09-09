class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :style
      t.integer :quantity
      t.decimal :price
      t.text :description

      t.timestamps null: false
    end
  end
end
