class Club < ApplicationRecord
    has_many :user_clubs
    has_many :book_clubs
    has_many :users, through: :user_clubs
    has_many :books, through: :book_clubs
end
