class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :quote, :clubs, :user_clubs
  has_many :user_books
  has_many :books, through: :user_books

  def clubs
    object.clubs.map do |club|
      ::ClubSerializer.new(club).attributes
    end
  end
end