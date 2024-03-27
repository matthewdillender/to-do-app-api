class CreateItems < ActiveRecord::Migration[7.1]
  def change
    create_table :items do |t|
      t.string :item_name
      t.integer :list_id
      t.boolean :completed

      t.timestamps
    end
  end
end
