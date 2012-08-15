class Sock
  include Comparable
  attr_reader :size
  def initialize size
    @size = size
  end
 
  def <=>(another_sock)
    if self.size < another_sock.size
      -1
    elsif self.size > another_sock.size
      1
    else
      0
    end
  end
end

sock1 = Sock.new(10)
sock2 = Sock.new(11)
sock3 = Sock.new(10)
 
puts "Are sock1 and sock3 equal? #{sock1 == sock3}"
puts "Are sock1 and sock2 NOT equal? #{sock1 != sock2}"
puts "Is sock1 > sock3? #{sock1 > sock3}"
puts "Is sock1 < sock2? #{sock1 < sock2}"
puts "Is sock1 >= sock3? #{sock1 >= sock3}"
puts "Is sock1 <= sock2? #{sock1 <= sock2}"