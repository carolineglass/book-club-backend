class User < ApplicationRecord
    has_many :user_clubs
    has_many :user_books
    has_many :clubs, through: :user_club
    has_many :books, through: :user_book
end
