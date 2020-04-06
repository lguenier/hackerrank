def arrayManipulation(n, queries)
    array = Array.new(n, 0)

    queries.each do |q| 
        array[q[0] - 1] += q[2]
        if q[1] < n
            array[q[1]] -= q[2]
        end
    end

    tmp = 0
    max = 0

    array.each do |value|
        tmp += value
        max = tmp if max < tmp
    end
    max
end