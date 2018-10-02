class CreateBusinesses < ActiveRecord::Migration[5.1]
  def change
    create_table :businesses do |t|
      t.string :yelp_id, null: false, unique: true
      t.belongs_to :airport, index: true
      t.json :payload, null: false
      t.timestamps
    end
  end
end
