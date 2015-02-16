def echo(string)
	string
end

def shout(string)
	string.upcase
end

def repeat(*args)
	string = args[0]
	repeated = string
	if args.length < 2
		int = 1
	else
		int = args[1] - 1
	end
	int.times do
		repeated = repeated + " " + string
	end
	repeated
end

def start_of_word(string, int)
	string[0,int]
end

def first_word(string)
	first_space = string.index(" ")
	first_word = string[0,first_space]
end

def titleize(string)
	word_array = string.split(" ")
	small_word_array = ["the", "and", "in", "a", "on", "over"]
	word_array.each do |value|
		unless small_word_array.include?(value)
			value.capitalize!
		end
	end
	word_array[0].capitalize!
	title = word_array.join(" ")
end

