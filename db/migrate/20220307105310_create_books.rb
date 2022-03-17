class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :name
      t.integer :genre_id
      t.text :synopsis
      t.integer :price
      t.string :image_id
      t.boolean :is_active

      t.timestamps
    end
  end
end
