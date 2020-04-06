def rotLeft(a, d)
    d.times { a << a.shift }
    a
end