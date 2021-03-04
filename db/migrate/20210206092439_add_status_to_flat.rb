class AddStatusToFlat < ActiveRecord::Migration[6.0]
  def change
    add_column :flats, :status, :string, :default => "En attente"
  end
end
