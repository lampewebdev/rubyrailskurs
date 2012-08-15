#kleiner exkurs zu arrays

a = [ 3.14159, "pie", 99 ]
a.class							#=>	Array
a.length						#=>	3
a[0]							#=>	3.14159
a[1]							#=>	"pie"
a[2]							#=>	99
a[3]							#=>	nil
b = Array.new
b.class							#=>	Array
b.length						#=>	0
b[0] = "second"
b << "array"
b								#=>	["second", "array"]

a = [ 1, 3, 5, 7, 9 ]
a[1..3] 						#=>	[3, 5, 7]
a[1...3]						#=>	[3, 5]
a[3..3]							#=>	[7]
a[-3..-1] 						#=>	[5, 7, 9]

a = [ 1, 3, 5, 7, 9 ]			#=> [1, 3, 5, 7, 9]
a[1] = 'bat' 					#=> [1, "bat", 5, 7, 9]
a[-3] = 'cat'					#=> [1, "bat", "cat", 7, 9]
a[3] = [ 9, 8 ]					#=> [1, "bat", "cat", [9, 8], 9]
a[6] = 99 						#=> [1, "bat", "cat", [9, 8], 9, nil, 99]

[1, 4, 3, 7, 2, 9].sort                   # => [1, 2, 3, 4, 7, 9]
[1, 4, 3, 7, 2, 9].sort {|a, b| b <=> a}  # => [9, 7, 4, 3, 2, 1]
puts [1, 4, 3, 7, 2, 9].join(".")
arr = []
"125.45".each {|c| arr << c}

[ "a", "b", "c" ].join        #=> "abc"
[ "a", "b", "c" ].join("-")   #=> "a-b-c"
puts [1, 4, 3, 7, 2, 9].sort_by {|i| -i } # => [9, 7, 4, 3, 2, 1]
puts %w{ abcd ab abc abcde }.sort_by {|i| i.length}  # => ["ab", "abc", "abcd", "abcde"]