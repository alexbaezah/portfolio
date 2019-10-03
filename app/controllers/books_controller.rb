class BooksController < ApplicationController
    def index 
        @book_items = Book.all
    end
end