class SongsController < ApplicationController

  def index
    @songs = Song.all
    render:index
  end

  def new
    @song = Song.new
    render:new
  end

  def create
    @song = Song.create(name: params[:song][:name], artist_id: params[:song][:artist_id], genre_id: params[:song][:genre_id])
    redirect_to song_path(@song)
  end

  def show
    @song = Song.find(params[:id])
    @artist = Artist.find(params[:id])
    @genre = Genre.find(params[:id])
    render:show
  end

  def edit
    @song = Song.find(params[:id])
    render:edit
  end

  def update
    @song = Song.update(name: params[:song][:name], artist_id: params[:song][:artist_id], genre_id: params[:song][:genre_id])
    redirect_to song_path(@song)
  end


end
