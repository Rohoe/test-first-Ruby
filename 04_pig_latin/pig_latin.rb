
def translate(string)
	word_array = string.split(" ")
	pig_latin = ""
	vowels = ["a", "e", "i", "o", "u"]
	word_array.each do |word|
		char_array = word.split("")
		if vowels.include?(char_array[0])
			pig_latin += word + "ay"
		elsif vowels.include?(char_array[1])
			unless char_array[0] == "q" and char_array[1] == "u"
				char_array.push(char_array[0])
				char_array.delete_at(0)
				pig_latin += char_array.join("") + "ay"
			else
				char_array.push(char_array[0])
				char_array.push(char_array[1])
				char_array.delete_at(0)
				char_array.delete_at(0)
				pig_latin += char_array.join("") + "ay"
			end
		elsif vowels.include?(char_array[2])
			unless char_array[1] == "q" and char_array[2] == "u"
				char_array.push(char_array[0])
				char_array.push(char_array[1])
				char_array.delete_at(0)
				char_array.delete_at(0)
				pig_latin += char_array.join("") + "ay"
			else
				char_array.push(char_array[0])
				char_array.push(char_array[1])
				char_array.push(char_array[2])
				char_array.delete_at(0)
				char_array.delete_at(0)
				char_array.delete_at(0)
				pig_latin += char_array.join("") + "ay"
			end
		elsif not vowels.include?(char_array[2])
			char_array.push(char_array[0])
			char_array.push(char_array[1])
			char_array.push(char_array[2])
			char_array.delete_at(0)
			char_array.delete_at(0)
			char_array.delete_at(0)
			pig_latin += char_array.join("") + "ay"
		end
		unless word == word_array.last
			pig_latin += " "
		end
	end
	pig_latin
end




=begin

	#SHIFT BY 1 METHOD
	if vowels.include?(first_letter)
		string += "ay"
	elsif vowels.include?(second letter)
		char_array = string.split("")
		to_replace = char_array[0]
		for i in 0.downto(-char_array.length + 1)
			temp = char_array[i-1]
			char_array[i-1] = to_replace
			to_replace = temp
		end
		translated = char_array.join("")
		translated += "ay"



	if not vowels.include?(string[0])
		char_array.push(char_array[0])
		char_array.delete_at(0)
		return char_array.join("") += "ay"
	end
	unless vowels.include?(string[1])



=end