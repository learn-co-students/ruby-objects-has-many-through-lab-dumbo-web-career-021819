class Aritst

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(song_name, genre)
    new_song = Song.new(song_name, genre)
    song.artist = self
  end

  def songs
    self.all.select do |each_song|
      each_song.artist == self
    end
  end

  def genres
    self.all.select do |each_song|
      each_song.genre
    end
  end

end
