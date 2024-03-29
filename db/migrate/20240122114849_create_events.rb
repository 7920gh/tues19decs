class CreateEvents < ActiveRecord::Migration[7.1]
  def change
    create_table :events do |t|
      t.string :artist
      t.text :description
      t.decimal :price_low
      t.decimal :price_high
      t.date :event_date

      t.timestamps
    end
  end
end
