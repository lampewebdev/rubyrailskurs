Hash["a", 100, "b", 200]       #=> {"a"=>100, "b"=>200}
Hash["a" => 100, "b" => 200]   #=> {"a"=>100, "b"=>200}
{ "a" => 100, "b" => 200 }     #=> {"a"=>100, "b"=>200}

h = Hash.new("Go Fish")
h["a"] = 100
h["b"] = 200
puts h["a"]           #=> 100
puts h["c"]           #=> "Go Fish"
# The following alters the single default object
puts h["c"].upcase!   #=> "GO FISH"
puts h["d"]           #=> "GO FISH"
h.keys           #=> ["a", "b"]
puts "---------------------------------"
 h = Hash.new { |hash, key| hash[key] = "Go Fish: #{key}" }
puts h["c"]           #=> "Go Fish: c"
puts h["c"].upcase!   #=> "GO FISH: C"
puts h["d"]           #=> "Go Fish: d"
puts h.keys.inspect           #=> ["c", "d"]

#once again symbols !
patient1 = { "ruby" => "red" }
patient2 = { "ruby" => "programming" }
patient1.each_key {|key| puts key.object_id.to_s} 	#=> 211006
patient2.each_key {|key| puts key.object_id.to_s} 	#=> 203536
#symbols to the rescue !
patient1 = { :ruby => "red" }
patient2 = { :ruby => "programming" }
patient1.each_key {|key| puts key.object_id.to_s} 	#=> 3918094
patient2.each_key {|key| puts key.object_id.to_s} 	#=> 3918094

#benchmarking
require "benchmark" 
test = "hi man" 
m = test.method(:length) 
n = 100000
Benchmark.bmbm {|x| 
	x.report("normal")	{ n.times { test.length } } 
  x.report("call") 		{ n.times { m.call } } 
  x.report("send") 		{ n.times { test.send(:length) } } 
  x.report("eval") 		{ n.times { eval "test.length" } } 
} 

#back to the hashes and equal
h1 = { "a" => 1, "c" => 2 }

h2 = { 7 => 35, "c" => 2, "a" => 1 }

h3 = { "a" => 1, "c" => 2, 7 => 35 }

h4 = { "a" => 1, "d" => 2, "f" => 35 }

h1 == h2   #=> false
h2 == h3   #=> true # wa wa wassss ?
h3 == h4   #=> false

#index
h = { "a" => 100, "b" => 200 }
h.index(200)   #=> "b"
h.index(999)   #=> nil
 

#replace
h = { "a" => 100, "b" => 200 }
h.replace({ "c" => 300, "d" => 400 })   #=> {"c"=>300, "d"=>400}