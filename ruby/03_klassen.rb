class Song
	attr_accessor :artist 
	attr_reader :title
	attr_writer :genre
	#Shortcut	 				Effect
	#attr_reader :v	 			def v; @v; end
	#attr_writer :v	 	 		def v=(value); @v=value; end
	#attr_accessor :v 	 		attr_reader :v; attr_writer :v
	#attr_accessor :v, :w 		attr_accessor :v; attr_accessor :w

	def initialize(title)
	    @title = title
	end

	def to_s
		"the song name is #{@title}"

	end
end

song1 = Song.new("Song2")
song2 = Song.new("Song3")
puts song1.title
