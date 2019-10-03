class BooksController < ApplicationController
    def index 
        @book_items = Book.all
    end
    
    def new 
        @book_item = Book.new
    end

    def create 
        @book_item = Book.new(book_params)

        respond_to do |format|
            if @book_item.save 
                format.html { redirect_to @book_item, notice: 'your book item is now live'}
            else
                format.html {render :new}
            end
        end
    end
end

private 
    def book_params 
        params.require(:book).permit(:title, :subtitle, :body)
    end
