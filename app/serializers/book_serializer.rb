class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :image, :description, :genre, :rating
  has_many :book_clubs
  has_many :user_books
  has_many :clubs, through: :book_clubs
  has_many :users, through: :user_books
end
