class UserBooksController < ApplicationController
    before_action :authorized, only: [:create]

    def create
        newEntry = @user.user_books.create(user_id: @user.id, book_id: params[:book_id], read?: false)
        render json: newEntry.book
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
