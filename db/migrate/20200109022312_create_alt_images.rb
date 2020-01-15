class CreateAltImages < ActiveRecord::Migration[6.0]
  def change
    create_table :alt_images do |t|
      t.string :image_url
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
