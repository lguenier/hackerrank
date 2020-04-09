# https://www.hackerrank.com/challenges/minimum-swaps-2/problem?h_l=interview&playlist_slugs%5B%5D%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D%5B%5D=arrays
# Minimum Swap 2
def minimumSwaps(arr, n)
  count = 0
  i = 1
  h = Hash[arr.each_with_index.map { |v, i| [i+1, v] }]
  while i < n
    if h[i] != i
      j = h[i]
      h[j], h[i] = h[i], h[j]
      count += 1
    end
    i += 1 if h[i] == i
  end
  count
end