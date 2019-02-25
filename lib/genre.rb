require 'pry'
class Genre

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all.push(self)
  end

  def songs
    Song.all.select {|song|
      song.genre.name == @name
    }
  end

  def artists
    songs.map {|song_genre|
      song_genre.artist
    }
  end

  def self.all
    @@all
  end
end
