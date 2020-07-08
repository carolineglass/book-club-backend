class ClubsController < ApplicationController
    def index
        clubs = Club.all
        render json: clubs, include: [:books, :users, :book_clubs]
    end
    
    def create
        club = Club.create(club_params)
        render json: club
    end
    
    def edit
    
    end
    
    def update
    
    end

    def destroy
        deleteClub = Club.find(params[:id])
        deleteClub.destroy
        render json: deleteClub
    end

    private

    def club_params
        params.permit(:name, :image, :meeting)
    end
end
