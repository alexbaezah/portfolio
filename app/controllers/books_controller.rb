class BooksController < ApplicationController
    before_action :set_book, only: [:show, :edit, :update, :destroy]
    
    
    def index 
        @book_items = Book.all
    end

    def show 
    end

    def edit 
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


    def update 
        respond_to do |format| 
            if @book_item.update(book_params)
                format.html { redirect_to books_path, notice: 'Se ha actualizado el book'}
            else 
                format.html {render :edit}
            end
        end
    end

    def destroy 
        @book_item.destroy 
        respond_to do |format| 
            format.html { redirect_to books_url, notice: "El book ha sido borrado"}
        end
    end
    

    
       
private 
    def set_book
        @book_item = Book.find(params[:id])
    end

    def book_params 
        params.require(:book).permit(:title, :subtitle, :body)
    end
end
