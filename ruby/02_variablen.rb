#instanzvariablen
class A
  def initialize(wert)
    @instanzvariable = wert
  end
  def zeigen
    puts @instanzvariable
  end
end
instanz = A.new(100)
puts @instanzvariable 	#=> nil #Eine Besonderheit: Nicht definierte Instanzvariablen haben automatisch den "Wert" nil. 
puts instanz.zeigen 		#=> 100
instanz2 = A.new("XY")
instanz2.zeigen 				#=> XY
instanz.zeigen 					#=> 100


#globale variablen
puts $global #=> nil
def meine_methode
  $global = "nicht benutzen!"
end
meine_methode
puts $global #=> nicht benutzen!

#klassenvariablen
class parent
  @@klassenvariable = "ABCDEF"
end

class child < parent
  @@klassenvariable = "Ein Wert"
end

class parent
  puts @@klassenvariable #=> Ein Wert
end
