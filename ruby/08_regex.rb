#puts "foobar".sub('bar', 'foo')
#puts "this is a test".gsub('i','asdfghj')
#x = "This is a test"
#erste 2 buchstaben ersetzen
#puts x.sub(/^../, 'Hello')
# start eines regex /
# ende eines rexex /
# ^ sagt aus das man in jeder line am anfang sucht
# . bedeutet jeder charakter also egal was da steht
# also heisst "/^../" nichts anderes als am anfang jeder zeile ersetze die ersten 2 buchstaben mit "hallo"
#puts x.sub(/..$/, 'Hello')

#String.scan returns all matches as String array:
# "xyz".scan(/../) { |letter| puts letter }
# "This is a test".scan(/../) { |x| puts x }
# "This is a test".scan(/\w\w/) { |x| puts x }

#Character	 Meaning
#^	 Anchor for the beginning of a line
#$	 Anchor for the end of a line
#\A	 Anchor for the start of a string
#\Z	 Anchor for the end of a string
#.	 Any character
#\w	 Any letter, digit, or underscore
#\W	 Anything that \w doesn’t match
#\d	 Any digit
#\D	 Anything that \d doesn’t match (non-digits)
#\s	 Whitespace (spaces, tabs, newlines, and so on)
#\S	 Non-whitespace (any visible character)
#\n  checks for new line
# |  or operator

count = 0
"The car costs $1000 and the cat costs $10".scan(/\w\w/) do |x|
	count +=1
end
puts count
#"The car costs $1000 and the cat costs $10".scan(/\d/) do |x|
#puts x
#end


#Modifier	 	Description
# * 			Match zero or more occurrences of the preceding character, and match as many as possible.
# +				Match one or more occurrences of the preceding character, and match as many as possible.
# *?			Match zero or more occurrences of the preceding character, and match as few as possible.
# +?			Match one or more occurrences of the preceding character, and match as few as possible.
# ?	 			Match either one or none of the preceding character.
#{x}	 		Match x occurrences of the preceding character.
#{x,y}	 		Match at least x occurrences and at most y occurrences.



 #"This is a test".scan(/[aeiou]/) { |x| puts x }
 #"This is a test".scan(/[a-M]/) { |x| puts x }

#string.=~(Regexp) returns the starting position of the first match or nil if no match 
#puts "123 456 789" =~ /\d+/
#puts "abc def ghi" =~ /\w+/

#puts "String has vowels" if "This is a test" =~ /[aeiou]/
#puts "String has vowels" if "T" =~ /[aeiou]/
#"Ruby For Newbies: Regular Expressions" =~ /New/ # => 9   
#puts "unless example" unless "This is a test" =~ /[0-9]/
#puts "1unless with number example" unless 9 =~ /[0-9]/
#puts "unless with number example" unless "9" =~ /[0-9]/
#puts "if not example" if !("This is a test" =~ /[0-9]/)
#puts "if example" if "This is a test" =~ /[0-9]/

#puts "String has vowels" if "This is a test".match(/[aeiou]/)
#x = "This is a test".match(/(\w+)/)
#x.to_a.each do |match| puts match end


#http://www.rubular.com/r/BnuXj4dB1M