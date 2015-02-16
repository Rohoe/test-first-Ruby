class Book
	attr_accessor :title

	def title=(t)
		@title = titleize(t)
	end

	def titleize(string)
	word_array = string.split(" ")
	small_word_array = ["the", "and", "in", "a", "on", "over", "of", "an"]
	word_array.each do |value|
		unless small_word_array.include?(value)
			value.capitalize!
		end
	end
	word_array[0].capitalize!
	title = word_array.join(" ")
	end

end
