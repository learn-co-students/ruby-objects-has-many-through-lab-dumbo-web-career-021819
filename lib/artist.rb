require 'pry'


class Artist

  @@all = []

  attr_accessor :name, :songs

  def initialize(name)
    @name = name 
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def genres
    self.songs.map do |song|
      song.genre
    end
  end

end













#     @@all
#   end
  
#   def new_song(name, genre) #should take in an argument of a name and genre and create a new song. That song should know that it belongs to the artist. 
#       new_song = Song.new(name, self, genre)
#       # binding.pry
     
#   end 

#   def songs #this should iterate through all songs and find the songs that belong to that artist. try using .select to achieve this. (the songs will be stored in an array?)

#   end

#   def genres #this should iterate over the arist's songs and collect the genre of each song. s

#   end

  
# end

