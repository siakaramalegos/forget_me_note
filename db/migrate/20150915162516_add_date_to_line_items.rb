class AddDateToLineItems < ActiveRecord::Migration
  def change
    add_column :line_items, :send_date, :date
  end
end
