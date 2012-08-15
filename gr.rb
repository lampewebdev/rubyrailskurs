def each_vowel(&code_block)
 %w{a e i o u}.each { |vowel| code_block.call(vowel) }
end
each_vowel{ | vowel | puts vowel }

puts Time.utc(2012,12,12,12,12,12,12,12).gmt?

rice_on_square = 10000000000000
11164.times do |square|
  puts "On square #{square + 1} are #{rice_on_square} grain(s)"
 rice_on_square *= rice_on_square *100000000000
end

1000.times do
(1..2000).to_a.each { |letter| puts letter }
end
