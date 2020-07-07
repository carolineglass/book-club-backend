class ClubsController < ApplicationController
    def index
        clubs = Club.all
        render json: clubs, include: [:books, :users]
    end
    
    def new
    
    end
    
    def create
    
    end
    
    def edit
    
    end
    
    def update
    
    end
    
    def show
    
    end
    
    def destroy
    
    end

    private

    def club_params
        params.permit(name, image, completed, meeting)
    end
end
