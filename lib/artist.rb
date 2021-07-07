class Artist
  attr_reader :name
  attr_accessor :genre, :songs, :genres

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @genres = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    s = Song.new(name, self, genre)
    @genres << genre
    @songs << s
    s
  end
end