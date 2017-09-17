def power_digit_sum
	x = 2 ** 1000
	sum = 0
	x.to_s.each_char do |c|
		sum = sum + c.to_i
	end
	puts "sum is #{sum}"
end

power_digit_sum