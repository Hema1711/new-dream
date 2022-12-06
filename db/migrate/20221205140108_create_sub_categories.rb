class CreateSubCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :sub_categories do |t|
      t.string :sub_category_name
      t.string :description

      t.timestamps
    end
  end
end
