class Song
@@all = []

	attr_reader :name
	attr_accessor :artist, :genre

	def initialize(name_of,artist,genre)
		@name = name_of
		@artist = artist
		@genre = genre
		@@all << self
	end

	def self.all
		@@all
	end

end