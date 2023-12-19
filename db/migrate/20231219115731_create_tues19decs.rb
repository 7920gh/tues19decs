class CreateTues19decs < ActiveRecord::Migration[7.1]
  def change
    create_table :tues19decs do |t|
      t.string :name
      t.string :email
      t.string :address
      t.integer :phone
      t.text :description
      t.boolean :personaldata
      t.boolean :showemail
      t.string :trade
      t.string :location

      t.timestamps
    end
  end
end
