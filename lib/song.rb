class Song
  attr_reader :title, :genre
  attr_accessor :artist

  @@all = []

  def initialize(title, artist, genre)
    @title = title
    @genre = genre
    @artist = artist
    genre.songs << self
    genre.artists << artist
    @@all << self
  end

  def self.all
    @@all
  end

end