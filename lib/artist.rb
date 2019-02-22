class Artist

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
    Song.new(song_name, self, genre)
  end

  def songs
    Song.all.select do |each_song|
      each_song.artist == self
    end
  end

  def genres
    songs.map do |each_song|
      each_song.genre
    end
  end
end
