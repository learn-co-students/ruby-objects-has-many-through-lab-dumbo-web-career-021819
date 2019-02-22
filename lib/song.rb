class Song

  attr_accessor :name, :artist, :genre

  @@all = []

  def self.all
    @@all
  end

  def initialize(song_name, song_artist, song_genre)
    @name = song_name
    @artist = song_artist
    @genre = song_genre
    @@all << self
  end
end
