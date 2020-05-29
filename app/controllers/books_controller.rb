class BooksController < ApplicationController
    def index
        @books = Book.all.sort_by { |hash| hash[:title] }
    end

    def show
        @book = Book.find(params[:id])
        @books_author = @book.author
    end
end
