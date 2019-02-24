require "pry"

class Genre
  attr_reader :name
  @@genres = []

  def initialize(name)
    @name = name
    @@genres << self
  end

  def self.all
    @@genres
  end

  def songs
    Song.all
  end

  def artists
    Song.all_artists
  end

end
