class CreateFlats < ActiveRecord::Migration[6.0]
  def change
    create_table :flats do |t|
      t.references :user, null: false, foreign_key: true
      t.string   :country
      t.text   :description
      t.string   :type
      t.string   :house_type
      t.string   :address
      t.integer   :rooms
      t.integer   :pieces
      t.integer   :surface
      t.integer   :price


      t.timestamps
    end
  end
end
