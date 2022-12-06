class CreateOrderDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :order_details do |t|
      t.integer :order_id
      t.integer :line_item_id
      t.integer :quantity
      t.integer :applied_discount_id

      t.timestamps
    end
  end
end
