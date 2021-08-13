class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.string :email
      t.string :address
      t.string :mobile_no

      t.timestamps
    end
  end
end
