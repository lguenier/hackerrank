# https://www.hackerrank.com/challenges/2d-array/problem?h_l=interview&playlist_slugs%5B%5D%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D%5B%5D=arrays
# 2D Array - DS

def hourglassSum(arr)
    max = -63
    (0..3).each do |x|
        (0..3).each do |y|
            max = [arr[y][x..x + 2], [arr[y + 1][x + 1]], arr[y + 2][x..x + 2]].flatten.sum if [arr[y][x..x + 2], [arr[y + 1][x + 1]], arr[y + 2][x..x + 2]].flatten.sum > max
        end
    end
    max
end