def even_next(n)
  n = n/2
end

def odd_next(n)
  n = (3*n + 1)
end

def next_value(n)
  n.even? ? even_next(n) : odd_next(n)
end

def collatz(n)
  array = [n]
  while n > 1
    n = next_value(n)
    array << n
  end
  return array
end

def longest_collatz
  i = 0
  find_longest = 0
  999999.downto(1) do |n|
    count = collatz(n).length
    i, find_longest = count, n if count > i
  end
  return find_longest
end