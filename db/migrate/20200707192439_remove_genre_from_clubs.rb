class RemoveGenreFromClubs < ActiveRecord::Migration[6.0]
  def change
    remove_column :clubs, :genre
  end
end
