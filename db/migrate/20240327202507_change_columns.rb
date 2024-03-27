class ChangeColumns < ActiveRecord::Migration[7.1]
  def change
    rename_column :todo, :name, :title
    add_column :todo, :category_id, :integer
    add_column :todo, :description, :string
    add_column :todo, :deadline, :date

    remove_column :category, :list_id
    remove_column :category, :completed
    rename_column :category, :item_name, :name
  end
end
