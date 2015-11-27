def add num1, num2
	num1 + num2
end

def subtract num1, num2
	num1 - num2
end

def sum arr
	arr.inject(0) { |sum, item| sum + item }
end

def multiply (*num)
	num.inject {|product, item| product * item}
end

def power num1, num2
	return num1**num2
end

def factorial num
	if num == 0
		return 1
	else
		(1..num).inject {|result, item| result*item}
	end
end