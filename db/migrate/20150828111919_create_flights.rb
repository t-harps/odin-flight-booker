class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.datetime :date
      t.integer :duration
      t.references :departure_airport
      t.references :destination_airport

      t.timestamps null: false
    end
  end
end
