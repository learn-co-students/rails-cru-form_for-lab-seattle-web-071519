class ArtistsController < ApplicationController


    before_action :find_artist, only: [:show, :edit, :update]
    
    def index
        @artists= Artist.all
    end
    
    def new
        @artist= Artist.new
    end
    
    def create
        @artist= Artist.new(artist_params)
        @artist.save
        redirect_to artist_path(@artist)
    end
 
    def show
        # @artist= artist.find(params[:id])
    end
 
    def edit
        # @artist= artist.find(params[:id])

    end

    def update
        @artist.update(artist_params)
        redirect_to artist_path(@artist)
    end

 
    def delete
        @artist.destroy
        redirect_to artist_path
    end


    private

    def artist_params
        params.require(:artist).permit(:name, :bio)
    end

    def find_artist
        @artist= Artist.find(params[:id])
    end

end
