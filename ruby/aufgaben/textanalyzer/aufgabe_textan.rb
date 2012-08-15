#text analyzer
#	•	 Character count
#	•	 Character count (excluding spaces)
#	•	 Line count
#	•	 Word count
#	•	 Sentence count
#	•	 Paragraph count
#	•	 Average number of words per sentence
#	•	 Average number of sentences per paragraph


stopwords = %w{the a by on for of are with just but and to the my I has some in} #ein weg sauberer weg string arrays zu erzeugen!
lines = File.readlines(ARGV[0]) #=> array
