string = "david copperfield"
word_array = string.split(" ")
small_word_array = ["the", "and", "in", "a", "on"]
puts word_array[0]
word_array.each do |value|
	something = 3
	unless small_word_array.include?(value)
		something = value.capitalize!
	end
end
word_array[0].capitalize!
title = word_array.join(" ")