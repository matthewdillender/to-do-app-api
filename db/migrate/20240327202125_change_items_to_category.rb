class ChangeItemsToCategory < ActiveRecord::Migration[7.1]
  def change
    rename_table :items, :category
    rename_table :lists, :todo
  end
end
