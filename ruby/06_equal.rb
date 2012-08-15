class Song
	include Comparable
	
	attr_accessor :title ,:length
	def initialize(title,length)
	    @title = title
	    @length = length
	end

	def <=>(other)
		if self.title < other.title
			-1
		elsif self.title > other.title
			1
		else
			0
		end
	end
	def to_s
		"the song name is #{@title} laenge:#{@length}"
	end
end

#song1 = Song.new("Song1",1.0)
#song2 = Song.new("Song2",2.0)
#puts song1
#puts song2
#puts song1 < song2
#puts song1 > song2