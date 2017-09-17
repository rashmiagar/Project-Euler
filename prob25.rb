# def nth_fib i 
# 	if i == 1 || i == 2
# 		return 1
# 	else
# 		nth_fib(i-1) + nth_fib(i-2)
# 	end
# end

def main
	phi = (1+Math.sqrt(5))/2
	return (((Math.log10 5)/2 + 1000-1)/Math.log10(phi)).ceil
end

puts main
