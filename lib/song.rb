class Song
  @@all = []
  
  attr_accessor :artist
  attr_reader :genre, :name
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@all << self
  end 
  
  def self.all
    @@all
  end
end