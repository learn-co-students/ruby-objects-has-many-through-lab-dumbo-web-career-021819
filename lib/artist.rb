require 'pry'
class Artist

  attr_accessor :name

  @@all = []
  # binding.pry
  def initialize(artist_name)
    @name = artist_name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(song_name, song_genre)
    newsong = Song.new(song_name, self, song_genre)############
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def genres
    songs.map {|song| song.genre}
  end

end
