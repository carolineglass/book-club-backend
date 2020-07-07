class Book < ApplicationRecord
    has_many :book_clubs
    has_many :user_books
    has_many :clubs, through: :book_clubs
    has_many :users, through: :user_books
end

