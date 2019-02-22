class Genre

  attr_accessor :name
  
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select do |each_song|
      each_song.genre == self
    end
  end

  def artists
    songs.map do |each_song|
      each_song.artist
    end
  end
end
