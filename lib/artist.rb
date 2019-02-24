require "pry"

class Artist
  attr_accessor :name
  @@artists = []

  def initialize(name)
    @name = name
    @@artists << self
  end

  def self.all
    @@artists
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def genres
    song_genre = songs.map do |song|
      song.genre
    end
    # binding.pry
  end

end
