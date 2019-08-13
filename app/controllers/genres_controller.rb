class GenresController < ApplicationController
    def index
        @genres = Genre.all
    end
    
    def new
    end

    def create
        @genre = Genre.new(name:params[:genre][:name])
        @genre.save
        redirect_to genres_path
    end

    def show
        @genre = Genre.find(params[:id])
    end
    
    def edit
        @genre = Genre.find(params[:id])
    end

    def update
        @genre = Genre.find(params[:id])
        @genre = Genre.update(name:params[:genre][:name])
        redirect_to genre_path(@genre)
    end
end
