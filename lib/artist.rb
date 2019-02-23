class Artist

	@@all = []
	attr_accessor :name

	def initialize(name)
		@name = name
		@@all << self
	end

	def new_song(name_of,genre)
	Song.new(name_of,self,genre)
	end

	def songs
		#Song.all.select do |x|
		#x.artist.name == self.name
		#end
		Song.all.select do |x|
			x.artist == self
		end
	
	end

	def genres
		Song.all.map do |x|
		x.genre
		end



	end
		

	def self.all
		@@all
	end

end