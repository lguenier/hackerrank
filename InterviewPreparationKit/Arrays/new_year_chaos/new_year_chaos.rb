def minimumBribes(q)
    bribes = 0 
    
    q = q.map {|p| p - 1}
    q.each.with_index do |p, i|
        if p - i > 2
            puts "Too chaotic"
            return
        end
        ([p-1,0].max..i).each do |j|
            bribes += 1 if q[j] > p
                
        end
    end
    puts(bribes)
end