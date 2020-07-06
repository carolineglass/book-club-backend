class CreateBookClubs < ActiveRecord::Migration[6.0]
  def change
    create_table :book_clubs do |t|
      t.integer :club_id
      t.integer :book_id
      t.boolean :active?

      t.timestamps
    end
  end
end
