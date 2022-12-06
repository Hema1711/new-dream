class CreateReturns < ActiveRecord::Migration[7.0]
  def change
    create_table :returns do |t|
      t.integer :delivery_id
      t.integer :user_id
      t.boolean :product_acceptable
      t.boolean :refund_inititation
      t.boolean :product_received
      t.boolean :refund_amount

      t.timestamps
    end
  end
end
