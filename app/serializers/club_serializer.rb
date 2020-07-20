class ClubSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :meeting, :books, :users_count, :users, :user_clubs, :book_clubs, :current_book

  def users_count
    object.users.count
  end

  def current_book
    object.book_clubs.find_by("active?": true)
  end
end
