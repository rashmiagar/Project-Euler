def ispalindrome?(num, b)
 str = num.to_s(b)
 str.reverse == str
end

def main
  sum = 0
  (1..1000000).each do |i|
  	if(i%2 == 1) # all odd numbers only
  	  if(ispalindrome?(i,10) && ispalindrome?(i,2))
		sum = sum + i
	  end
  	end
  end
 return sum
end

puts main

