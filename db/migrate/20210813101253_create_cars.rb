class CreateCars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
      t.string :car_name
      t.string :price
      t.string :time_duration 

      t.timestamps
    end
  end
end
