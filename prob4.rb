def ispalindrome? num
 reverse = 0
 n = num
  while(n > 0)
  	reverse = 10 * reverse + n % 10
  	n = n / 10
  end
  reverse == num
end

def largest_palindrome
  max = 0
  temp = 0
  (100..999).each do |i|
  	(100..999).each do |j|
  		temp = i * j
  		if(temp > max && ispalindrome?(temp))
  			max = temp
  		end
  	end
  end
  return max
end

puts ispalindrome? 9009

puts largest_palindrome
