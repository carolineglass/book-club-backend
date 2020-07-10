class UserBooksController < ApplicationController
    before_action :authorized, only: [:create]

    def create
        newEntry = UserBook.create(user_book_params)
        render json: newEntry
    end
    
    def update
    
    end
    
    def destroy
    
    end

    private

    def user_book_params
        params.permit(:book_id, :user_id, :read?)
    end

end
