class CreateRentalProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :rental_properties do |t|
      t.string :name
      t.integer :rent
      t.string :address
      t.integer :age
      t.text :note

      t.timestamps
    end
  end
end
