class Genre
@@all = []
attr_reader :name


	def initialize(name)
		@name = name
		@@all << self
	end

	def songs
		Song.all.select do |x|
			x.genre == self
		end
	end

	def artists
		Song.all.map do |x|
			x.artist
		
		end
		
	end

	def self.all
		@@all
	end

end