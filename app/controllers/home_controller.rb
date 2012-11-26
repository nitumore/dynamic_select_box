class HomeController < ApplicationController

 def index
    @genres  = Genre.all
    @artists = Artist.all
    @songs   = Song.all
  end

  def update_artists
    # updates artists and songs based on genre selected
    genre = Genre.find(params[:genre_id])
    # map to name and id for use in our options_for_select
    @artists = genre.artists.map{|a| [a.name, a.id]}.insert(0, "Select an Artist")
    @songs   = genre.songs.map{|s| [s.title, s.id]}.insert(0, "Select a Song")
  end

  def update_songs
    # updates songs based on artist selected
    artist = Artist.find(params[:artist_id])
    @songs = artist.songs.map{|s| [s.title, s.id]}.insert(0, "Select a Song")
  end

end  