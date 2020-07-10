class User < ApplicationRecord
    has_many :user_clubs
    has_many :user_books
    has_many :clubs, through: :user_clubs
    has_many :books, through: :user_books

    validates_uniqueness_of :name

    has_secure_password
end
