def combination(r, n)
  s = Array.new()
  for i in 1..r do
    s[i] = i
  end
  puts s.compact.join
  c = fact(n)/(fact(r)*fact(n-r))
  for i in 2..c do
    m = r
    max_val = n
    while s[m] == max_val do
      m = m-1
      max_val = max_val-1
    end
    s[m] = s[m].to_i + 1
    for j in m+1..r do
      s[j] = s[j-1].to_i+1
    end
    puts s.compact.join
  end
end

def fact(n)
  if n == 0
    return 1
  else
    n * fact(n-1)
  end
end

puts "input r: "
r = gets.to_i
puts "input n: "
n = gets.to_i

#degbugging:
puts "n = #{n}, r = #{r}"
combination(r,n)
