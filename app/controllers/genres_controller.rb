class GenresController < ApplicationController
    before_action :find_genre, only: [:show, :edit, :update]
    
    def index
        @genres= Genre.all
    end
    
    def new
        # byebug
        @genre= Genre.new
    end
    
    def create
        @genre= Genre.new(genre_params)
        @genre.save
        redirect_to genre_path(@genre)
    end
 
    def show
        # @genre= genre.find(params[:id])
    end
 
    def edit
        # @genre= genre.find(params[:id])

    end

    def update
        @genre.update(genre_params)
        redirect_to genre_path(@genre)
    end

 
    def delete
        @genre.destroy
        redirect_to genre_path
    end


    private

    def genre_params
        params.require(:genre).permit(:name)
    end

    def find_genre
        @genre= Genre.find(params[:id])
    end
end