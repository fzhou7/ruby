def reverser &block
	str_arr = block.call.split
	str_arr = str_arr.map do |word|
		word.reverse
	end
	return str_arr.join(" ")
end

def adder (num=1, &block)
	num + block.call
end

def repeater (num=1, &block)
	num.times {block.call}
end