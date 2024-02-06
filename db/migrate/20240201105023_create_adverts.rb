class CreateAdverts < ActiveRecord::Migration[7.1]
  def change
    create_table :adverts do |t|
      t.string :name
      t.string :product
      t.text :description
      t.decimal :price
      t.string :email
      t.string :image_url

      t.timestamps
    end
  end
end
