class Artist

attr_reader :name
@@all = []

def initialize(name)
  @name = name
  @@all << self
end

def new_song(name, genre)
  Song.new(name, self, genre)
end

def songs
  Song.all.select {|each_song| each_song.artist == self}
end

def genres
  songs.collect {|each_song| each_song.genre}
end

def self.all
  @@all
end

end
