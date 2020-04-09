# https://www.hackerrank.com/challenges/two-strings/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=dictionaries-hashmaps

def twoStrings(s1, s2)
    s1.split("").each do |l|
        if s2.include? l
            return 'YES'
        end
    end
    return 'NO'
end