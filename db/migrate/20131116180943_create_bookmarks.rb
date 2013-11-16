class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.integer :list_number
      t.text :book
      t.integer :chapter
      t.references :user

      t.timestamps
    end

    add_index :bookmarks, :user_id
  end
end
