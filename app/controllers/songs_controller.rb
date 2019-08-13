class SongsController < ApplicationController
    def index
        @songs = Song.all
        # @artist = Artist.find(@song.artist_id)
        # @genre = Genre.find(@song.genre_id)
    end
    
    def new
        @song = Song.new
    end

    def create
        @artist_id = Artist.find_artist_id_by_name(params[:song][:artist_name])
        @genre_id = Genre.find_genre_id_by_name(params[:song][:genre_name])
        @song = Song.new(name:params[:song][:name],artist_id: @artist_id,genre_id:@genre_id)
        @song.save
        redirect_to songs_path
    end

    def show
        @song = Song.find(params[:id])
        @artist = Artist.find(@song.artist_id)
        @genre = Genre.find(@song.genre_id)
    end
    
    def edit
        @song = Song.find(params[:id])
    end

    def update
        @song = Song.find(params[:id])
        @artist_id = Artist.find_artist_id_by_name(params[:song][:artist_name])
        @genre_id = Genre.find_genre_id_by_name(params[:song][:genre_name])
        @song = Song.update(name:params[:song][:name],artist_id: @artist_id,genre_id:@genre_id)
        @song.save
        redirect_to song_path(@song)
    end
end
