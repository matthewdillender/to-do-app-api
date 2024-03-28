class RemoveTables < ActiveRecord::Migration[7.1]
  def change
    drop_table :category
    drop_table :todo
  end
end
