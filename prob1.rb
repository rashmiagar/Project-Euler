def find_sum limit
  sum = 0
  (1..(limit-1)/3).each do |i|
  	sum = sum + 3*i
  	puts "#{3*i}, "
  end
  sum2 = 0
  (1..(limit-1)/5).each do |i|
  	sum2 = sum2 + 5*i
  	puts "#{5*i}"
  end
  sum3 = 0
  (1..(limit-1)/15).each do |i|
  	sum3= sum3 + 15*i
  end
  return sum + sum2 - sum3
end

puts find_sum 1000