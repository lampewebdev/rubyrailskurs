#alles ist ein objekt in ruby nur nil nicht !
puts nil.class 
puts "string".class
puts 1.class
puts 23223232323232323343344.class
puts "//////////dynamische//////////////////"
x = nil
puts "x ist von der klasse: #{x.class}"
x = "string"
puts "x ist von der klasse: #{x.class}"
x = 1
puts "x ist von der klasse: #{x.class}"
x = 23223232323232323343344
puts "x ist von der klasse: #{x.class}"
puts "x ist von der methoden der klasse #{x.class}: #{x.methods}"