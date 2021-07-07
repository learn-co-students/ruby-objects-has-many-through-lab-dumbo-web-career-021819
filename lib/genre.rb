class Genre
  attr_reader :name
  attr_accessor :songs, :artists

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @artists = []
    @@all << self
  end

  def songs
    @songs
  end

  def self.all
    @@all
  end

  def artists
    @artists
  end
end