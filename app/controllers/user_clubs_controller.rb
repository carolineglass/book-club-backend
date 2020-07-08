class UserClubsController < ApplicationController
    
    def create
        newEntry = UserClub.create(user_club_params)
        render json: newEntry
    end
    
    def update
    
    end
    
    def destroy
    
    end

    private

    def user_club_params
        params.permit(:club_id, :user_id, :progress)
    end
end
