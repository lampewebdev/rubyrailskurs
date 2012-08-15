class Song
	attr_accessor :title, :artist 
	attr_reader :length
	attr_writer :genre

	def initialize *args
	    case args.size
	      when 1
	        @title = args[0]
	      when 2
	        @title = args[0]
					@artist = args[1]
	     else
	      error
	    end	
	    length = 0
	end

	def to_s
		"the song name is #{@title} #{if @artist.nil? then "" else "from #{@artist}" end}"
	end
end

song1 = Song.new("Song2")
song2 = Song.new("Song2","Blur")
puts song1
puts song2
#puts song1.title
#puts song2.title
#puts song1.title = "not ruby ruby ruby"
#puts song2.length = 12
#puts song2.genre = "rock"
#puts song2.genre