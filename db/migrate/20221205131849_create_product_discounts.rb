class CreateProductDiscounts < ActiveRecord::Migration[7.0]
  def change
    create_table :product_discounts do |t|
      t.integer :discount_id
      t.integer :product_id

      t.timestamps
    end
  end
end
