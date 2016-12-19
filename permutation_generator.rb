def permute(n)
  s = Array.new()
  for i in 1..n do
    s[i] = i
  end
  puts s.compact.join
  for i in 2..fact(n)
    m = n-1
    while s[m] >s [m+1] do
      m = m-1
    end
    k = n
    while s[m] > s[k] do
      k = k-1
    end
    #swap s[m] and s[k]
    temp = s[m]
    s[m] = s[k]
    s[k] = temp
    p = m+1
    q = n
    while p < q do
      temp2 = s[p]
      s[p] = s[q]
      s[q] = temp2
      p = p+1
      q = q-1
    end
    puts s.compact.join
  end
end

def fact(n)
  if n == 0
    return 1
  else
    return n * fact(n-1)
  end
end


puts "Enter a value for n. ".chomp
n = gets.to_i
permute(n)s
