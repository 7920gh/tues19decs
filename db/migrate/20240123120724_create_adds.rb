class CreateAdds < ActiveRecord::Migration[7.1]
  def change
    create_table :adds do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.integer :seller_id
      t.string :email
      t.string :img_url

      t.timestamps
    end
  end
end
