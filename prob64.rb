upperbound = 10000
result = 0
 
(2..upperbound).each do |n|
    a0 = Math.sqrt(n).to_i
    if (a0 * a0 == n) 
        next
    end

    period = 0
    d = 1
    m = 0
    a = a0
 
    while(a != 2*a0) do
        m = d*a-m
        d = (n-m * m) / d
        a = (a0 + m) / d
        period=period+1
    end
 
    if (period % 2 == 1) 
        result= result+1
    end
end
puts result
