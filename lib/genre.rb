class Genre

attr_reader :name
@@all = []

def initialize(name)
  @name = name
  @@all << self
end

def songs
  Song.all.select {|each_song| each_song.genre == self}
end

def artists
  songs.map {|each_song| each_song.artist}
end

def self.all
  @@all
end

end
