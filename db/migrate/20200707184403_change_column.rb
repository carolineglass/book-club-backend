class ChangeColumn < ActiveRecord::Migration[6.0]
  def change
    change_column(:books, :rating, :float)
  end
end
