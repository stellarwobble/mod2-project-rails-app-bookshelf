class GenresController < ApplicationController
    def index
        @genres = Genre.all.sort_by { |hash| hash[:name] }
    end

    def show
        @genre = Genre.find(params[:id])
        @genre_books = @genre.books.sort_by { |hash| hash[:title] }
    end
end
