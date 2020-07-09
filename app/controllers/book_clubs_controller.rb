class BookClubsController < ApplicationController

    def create
        newEntry = BookClub.create(book_club_params)
        render json: newEntry.book
    end
    
    def update
    
    end
    
    def destroy
    
    end

    private

    def book_club_params
        params.permit(:book_id, :club_id, :active?)
    end
    
end
