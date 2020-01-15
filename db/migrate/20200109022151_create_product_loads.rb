class CreateProductLoads < ActiveRecord::Migration[6.0]
  def change
    create_table :product_loads do |t|
      t.string :product_load_name
      t.date :product_load_date

      t.timestamps
    end
  end
end
