class BookController < ApplicationController
    skip_before_action :verify_authenticity_token
    def allBooks 
        @books = Book.all
        render json: books 
    end
    
    def getBook 
        @book = Book.find(params[:id])
        render json: book
    end 

    def addBook
        @book = Book.new(book_params)


        @book.save 
            render json: book: @book
 
        end
    end

    private 
        def book_params
            params.permit(:B_id,:B_title,:Author,:Publisher,:Year,:book)
        end
end