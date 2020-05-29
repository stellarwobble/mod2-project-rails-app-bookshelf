class AuthorsController < ApplicationController
    def index
        @authors = Author.all.sort_by { |hash| hash[:name] }
    end

    def show
        @author = Author.find(params[:id])
    end
end
