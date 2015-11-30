def measure (num=1)
	total_time = 0
	num.times do
		start = Time.now
		yield
		finish = Time.now
		total_time += finish - start
	end
	total_time/num
end