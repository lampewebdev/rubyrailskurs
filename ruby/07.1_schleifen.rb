#5.times { print "Test" }
#1.upto(5) { print "Test" }
#10.downto(5) { print "Test" }
#1.step(50, 5) { print "Test" }

#1.upto(5) { |number| puts number }

a = 0
while a < 9
  a += 1
end

a = 0
until a >= 9
  a += 1
end

a = 0
a += 1 while a < 9
a = 0
a += 1 until a >= 9

ary = [1, 2, 3]
ary.each do |element|
  puts element
end
#Ist das gleiche wie
for element in ary do
  puts element
end


def potenzieren(basis, exponent = 2)
  exponent == 0 ? 1 : basis * potenzieren(basis, exponent - 1)
end
puts "3 hoch 3 ergibt #{potenzieren(3, 3)}. "
#=> 3 hoch 3 ergibt 27.