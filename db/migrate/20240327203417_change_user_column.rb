class ChangeUserColumn < ActiveRecord::Migration[7.1]
  def change
    remove_column :users, :password_confirmation
    rename_column :users, :password, :password_digest
  end
end
