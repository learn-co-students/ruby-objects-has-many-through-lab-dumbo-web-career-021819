require 'pry'

class Song

  attr_accessor :artist, :genre, :song_name

  @@all = []

  def initialize(song_name, artist, genre)
    @song_name = song_name
    @artist = artist
    @genre = genre
    @@all << self
  end

  # binding.pry

  def self.all
    @@all
  end
end
