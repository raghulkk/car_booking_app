class AddColumn < ActiveRecord::Migration[6.1]
  
  def change
    add_column :bookings, :date, :string
  end

end
