# https://leetcode.com/problems/goat-latin/

def to_goat_latin(s)
    words = s.split(' ').map.with_index do |word, index|
        unless ['a', 'e', 'i', 'o', 'u'].include? word[0].downcase
            word = word[1..-1] + word[0]
        end
        word + ('ma' + 'a' * (index + 1))
    end
    words.join(" ")
end