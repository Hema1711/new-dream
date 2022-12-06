class CreateReturnLogs < ActiveRecord::Migration[7.0]
  def change
    create_table :return_logs do |t|
      t.integer :return_id
      t.integer :initial_value
      t.integer :final_value
      t.string :reason

      t.timestamps
    end
  end
end
