class AddBoolean < ActiveRecord::Migration[7.1]
  def change
    remove_column :todos, :completed
    add_column :todos, :completed, :boolean, default: :false
  end
end
