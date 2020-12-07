class AddFlatToContacts < ActiveRecord::Migration[6.0]
  def change
    add_reference :contacts, :flat, null: false, foreign_key: true
  end
end
