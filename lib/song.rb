require "pry"

class Song
  attr_accessor :artist, :name, :genre
  @@songs = []
  #@@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    #@@genres << genre
    @@songs << self
  end

  def self.all
    @@songs
  end

  def self.all_artists
    Artist.all
  end

end
