puts "if: true" if true
puts "if: false" if false

puts "unless: true" unless true
puts "unless: false" unless false


#Ternary operator
var = 10
puts "The variable is " + (var == 10 ? "10" : "Not 10")
var = 11
puts "The variable is " + (var == 10 ? "10" : "Not 10")

a, b, c = false, false, false
if a
  puts "a war true!"
elsif b
  puts "b war true!"
elsif c
  puts "c war true!"
else
  puts "Weder a,b noch c war true!"
end

a = 3
case a
  when 1
    puts "a war 1"
  when 2
    puts "a war 2"
  when 3
    puts "a war 3"
  else # <== Auch ein Case-Konstrukt kann eine else-Möglichkeit haben!
    puts "a war weder 1 noch 2 noch 3. "
end

a, b, c = true, 7, false
if a and b == 7 and !c
  #Das hier wird ausgeführt
end
#In diesem Falle sind die Kurzformen gleich: 
if a && b == 7 && !c
  #Das hier wird auch ausgeführt
end
#Hier nicht: 
if a && b == 7 and !c
#Entspricht nämlich: 
if (a and b == 7) and (not c)

#1 & 0 #=> 0 (AND)
#1 | 0 #=> 1 (OR)
#1 ^ 0 #=> 1 (XOR)