class CreatePProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :p_products do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.decimal :price

      t.timestamps
    end
  end
end
