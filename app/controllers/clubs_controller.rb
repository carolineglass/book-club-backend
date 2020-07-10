class ClubsController < ApplicationController
    def index
        clubs = Club.all
        render json: clubs
    end
    
    def create
        club = Club.create(club_params)
        render json: club
    end
    
    def update
        club = Club.find(params[:id])
        club.update(club_params)
        render json: club
    end

    def destroy
        deleteClub = Club.find(params[:id])
        deleteClub.destroy
        render json: deleteClub
    end

    private

    def club_params
        params.permit(:name, :image, :meeting, :users)
    end
end
