class AddPhoneToTickets < ActiveRecord::Migration[7.1]
  def change
    add_column :tickets, :phone, :string
  end
end
