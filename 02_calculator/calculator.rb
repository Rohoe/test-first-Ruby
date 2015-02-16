require 'bigdecimal'
require 'bigdecimal/util'

def add(a, b)
	BigDecimal(a.to_s) + BigDecimal(b.to_s)
end

def subtract(a, b)
	BigDecimal(a.to_s) - BigDecimal(b.to_s)
end

def sum(array)
	sum = 0
	array.each do |x|
		sum += x
	end
	sum
end

def multiply(*args)
	product = 0.0
	if args.length > 0
		product = BigDecimal("1")
		args.each do |x|
			product = product * BigDecimal(x.to_s)
		end
	end
	product
end