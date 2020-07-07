class ClubsController < ApplicationController
    def index
        clubs = Club.all
        render json: clubs, include: [:books, :users]
    end

end
