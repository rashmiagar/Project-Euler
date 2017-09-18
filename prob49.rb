def check_permutation(m, n)
	temp = n
	arr = []
	10.times{arr<< 0}
	while(temp > 0)
		arr[temp%10] = arr[temp%10]+1
		temp = temp / 10
	end

	temp = m
	while(temp > 0)
		arr[temp%10] = arr[temp%10]-1
		temp = temp/10
	end

	arr.each do |i|
		return false  if i != 0
	end
end


# get primes from 1000 to num
def primes num
	arr = []
	(1489..num).each do |i|
		arr << i if(isprime i)
	end
	return arr
end

def isprime num
	if num == 1 || num == 2
		return true
	else
		(3..num-1).each do |i|
			if (num % i == 0)
				return false
			end
		end
		return true
	end
end

def main
	primesarr = primes 10000
	len = primesarr.length
	primesarr.each_with_index do |num, index|
		primesarr[index+1..len].each do |j|
			k = j + (j - num)
			if(k < 10000 && isprime(k))
				if(check_permutation(num, j) && check_permutation(num, k))
					puts "#{num}, #{j}, #{k}"
					return num.to_s + j.to_s + k.to_s 
				end
			end
		end
	end
end

puts main
