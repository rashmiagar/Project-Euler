def fib 
	f0 = 1
	fprev = 2
	fnext = f0 + fprev
	sum = fprev 
	while(fnext < 4000000)
	  if(fnext % 2 == 0)
	  	sum = sum + fnext
	  end
	  temp = fnext
	  fnext = fprev + fnext
	  fprev = temp
	end
	return sum
end

puts fib