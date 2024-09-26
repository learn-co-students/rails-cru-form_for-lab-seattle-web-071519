class ArtistsController < ApplicationController
    def index
        @artists = Artist.all
    end
    
    def new
    end

    def create
        @artist = Artist.new(name:params[:artist][:name],bio:params[:artist][:bio])
        @artist.save
        redirect_to artists_path
    end

    def show
        @artist = Artist.find(params[:id])
    end
    
    def edit
        @artist = Artist.find(params[:id])
    end

    def update
        @artist = Artist.find(params[:id])
        @artist = Artist.update(name:params[:artist][:name],bio:params[:artist][:bio])
        redirect_to artist_path(@artist)
    end

end
