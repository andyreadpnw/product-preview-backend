class CreateProductLogs < ActiveRecord::Migration[6.0]
  def change
    create_table :product_logs do |t|
      t.integer :parent_id
      t.string :product_name
      t.integer :style_id
      t.integer :department
      t.string :status
      t.string :priority
      t.string :issue_type
      t.string :issue_class
      t.string :site
      t.string :division
      t.string :environment
      t.string :log_body
      t.string :assigned
      t.string :cc
      t.date :date_due
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
