class DropTables < ActiveRecord::Migration[6.1]
  def change
    drop_table :tables
  end
end
