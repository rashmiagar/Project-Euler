def pythogorean_triplet
	s = 1000
	(1..s/3).each do |a|
		(a..s/2).each do |b|
			c = s - a - b
			if( a * a + b* b == c* c)
				puts "a: #{a} b: #{b} c: #{c}"
				puts a*b*c
				return
			end
		end
	end
end

pythogorean_triplet