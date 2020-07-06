class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :image
      t.string :author
      t.text :description
      t.string :genre
      t.integer :rating

      t.timestamps
    end
  end
end
