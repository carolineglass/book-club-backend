class BooksController < ApplicationController

    def index
        books = Book.all
        render json: books, include: [:clubs, :users]
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
