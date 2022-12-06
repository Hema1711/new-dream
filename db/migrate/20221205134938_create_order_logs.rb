class CreateOrderLogs < ActiveRecord::Migration[7.0]
  def change
    create_table :order_logs do |t|
      t.integer :order_id
      t.integer :initial_value
      t.integer :final_value
      t.string :reason

      t.timestamps
    end
  end
end
