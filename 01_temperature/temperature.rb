require 'bigdecimal'
require 'bigdecimal/util'

def ftoc(temp)
	f = BigDecimal(temp.to_s)
	(f - BigDecimal("32.0")) / BigDecimal("1.8")
end

def ctof(temp)
	c = BigDecimal(temp.to_s)
	BigDecimal("1.8") * c + BigDecimal("32.0")
end