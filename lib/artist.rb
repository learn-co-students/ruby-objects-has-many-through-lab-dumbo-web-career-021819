

class Artist
  
  attr_accessor :name, :songs, :genre
  @@all = []
  
   def initialize(name)
      @name = name
      @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_song(name,genre)
      song = Song.new(name,self,genre)
  end

  def songs
    Song.all.select do |song|         #selects into array
      song.artist == self             #all songs by artist
    end
  end

  def genres
    songs.collect do |song|         #collect songs into array
      song.genre                    #array from songs method get genre
    end
  end
  
  
 end