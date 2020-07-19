class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :quote
  has_many :user_clubs
  has_many :user_books
  has_many :clubs, through: :user_clubs
  has_many :books, through: :user_books
end
