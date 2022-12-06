class CreateDeliveryLogs < ActiveRecord::Migration[7.0]
  def change
    create_table :delivery_logs do |t|
      t.integer :delivery_id
      t.integer :intial_value
      t.integer :final_value
      t.string :reason

      t.timestamps
    end
  end
end
