class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.integer :parent_id
      t.string :name
      t.integer :department
      t.integer :style_id
      t.integer :color_id
      t.string :product_copy
      t.string :product_main_image
      t.string :fit
      t.string :fabrication
      t.string :style_type
      t.references :product_load, null: false, foreign_key: true

      t.timestamps
    end
  end
end
