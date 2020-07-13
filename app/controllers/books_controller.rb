class BooksController < ApplicationController
    before_action :authorized, only: [:create]

    def index
        books = Book.all
        render json: books
    end
    
    def new
    
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
