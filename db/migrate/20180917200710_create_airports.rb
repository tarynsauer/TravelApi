class CreateAirports < ActiveRecord::Migration[5.1]
  def change
    create_table :airports do |t|
      t.string :name, null: false
      t.string :city
      t.string :country
      t.text :description, null: false
      t.string :website
      t.string :iata, limit: 3, null: false
      t.string :icao, limit: 4
      t.string :faa_lid, limit: 3
      t.decimal :latitude, precision: 10, scale: 6, null: false
      t.decimal :longitude, precision: 10, scale: 6, null: false
      t.string :timezone, null: false
      t.string :utc_offset, null: false
      t.integer :total_flights

      t.timestamps
    end
  end
end
