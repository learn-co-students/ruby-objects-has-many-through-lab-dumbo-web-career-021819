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
    self.all.select do |each_song|
      each_song.song == self
    end
  end

  def artists
    self.all.select do |each_song|
      each_song.artist
    end
  end

end
