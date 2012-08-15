
#variablen
@das_ist_eine_langer_variablenname = true

$meine_variable = nil

def eine_methode
  puts "Hello!"
end

class EineKlasse #Bei Klassen findet sich sowohl die Eine_Klasse- als auch die EineKlasse-Schreibweise. 
end

#methoden
def meine_methode
  puts "Kleiner Methodenname!"
end

def UnueblicherName
  puts "Großer Methodenname"
end

#ausrufezeichen beachten!!!!!!!!!!!

string = "Hello world!"
string.sub("Hello", "Goodbye") #=> Goodbye world!
string #=> Hello world!
string.sub!("Hello", "Goodbye") #=> Goodbye world!
string #=> Goodbye world

#Methoden, die nur true oder false zurückgeben, sind mit einem Fragezeichen gekennzeichnet
1.nil? #=> false
[].empty? #=> true

#methoden ohne argumente
#Unüblich: 
[1, 2, 3].to_s()
#Besser: 
[1, 2, 3].to_s

a = 1
#Ungebräuchlich: 
if (a > 0)
  #Mache irgendwas...
end
#Korrekt: 
if a > 0
  #Mache irgendwas...
end

#Einrückungen mit einer tabsize von 2!!!!
#Level 0
class A
  #Level 1
  attr_reader :x
  
  def initialize
    #Level 2
    @x = [1, 2, 3]
  end
  #Level 1
  def methode
    #Level 2
    @x.each do |val|
      #Level 3
      if val % 2 == 0
        #Level 4
        val += 9
      end
      #Level 3
    end
    #Level 2
  end
  #Level 1
end
#Level 0
y = A.new
y.methode
p y.x