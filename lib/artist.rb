require 'pry'

class Artist

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all.push(self)
  end

  def new_song(song_name, genre)
    newSong = Song.new(song_name, self, genre)
    newSong
  end

  def songs
    Song.all.select {|song|
      song.artist == self
    }
  end

  def genres
    Song.all.map { |song|
      song.genre
    }
  end

  def self.all
    @@all
  end

end
