class CreateNearestStations < ActiveRecord::Migration[6.0]
  def change
    create_table :nearest_stations do |t|
      t.string :line
      t.string :name
      t.string :walking_minutes
      t.references :rental_property, null: false, foreign_key: true

      t.timestamps
    end
  end
end
