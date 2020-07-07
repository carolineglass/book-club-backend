class BookClub < ApplicationRecord
    belongs_to :book
    belongs_to :club
end
