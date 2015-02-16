class Timer
	attr_accessor :seconds, :minutes, :hours

	def initialize
		@seconds = 0
		@minutes = 0
		@hours = 0
	end

	def seconds=(secs)
		@hours = secs/3600.floor
		secs -= self.hours * 3600
		@minutes = secs/60.floor
		secs -= self.minutes * 60
		@seconds = secs
	end

	def time_string
		seconds_string = pad_zeros(self.seconds)
		minutes_string = pad_zeros(self.minutes)
		hours_string = pad_zeros(self.hours)
		time_string = hours_string + ":" + minutes_string + ":" + seconds_string
	end

	def pad_zeros(int)
		num = int.to_s
		if int < 10
			return "0" + num
		else
			return num
		end
	end
end