class AddQuoteToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :quote, :string
  end
end
