#Question 15, implement algorithm 5.2.3
def base_b_to_dec(c, n, b)
  dec_value = 0
  power = 1
  for i in 0..n do
    dec_value = dec_value + c[n-i]*power
    power = power * b
  end
  puts "The decimal value of the base #{b} number #{c.join(',').gsub(',', '')} is #{dec_value}"
  return dec_value
end

#These next lines get the user's input.
puts "What number do you wish to convert?"
c = gets.chomp.split('')
puts "How many digits are in the number?"
n = gets.to_i - 1
puts "What base is the number?"
b = gets.to_i

#This part handles the conversion from alpha characters to hex numbers if base entered is 16.
if b == 16
  for i in 0..n
    c[i] = c[i].hex
  end
else
  for i in 0..n
    c[i] = c[i].to_i
  end
end

#Here we actually call the method.
base_b_to_dec(c, n, b)
