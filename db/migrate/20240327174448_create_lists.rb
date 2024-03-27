class CreateLists < ActiveRecord::Migration[7.1]
  def change
    create_table :lists do |t|
      t.string :name
      t.boolean :completed
      t.integer :user_id

      t.timestamps
    end
  end
end
