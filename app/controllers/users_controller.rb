class UsersController < ApplicationController

    def index
        users = User.all
        render json: users, include: [:books, :clubs, :user_books]
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
end
