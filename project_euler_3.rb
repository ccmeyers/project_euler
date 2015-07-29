# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

# def find_factors(number)
#  @factors = (2...(number/2)).select{|n| number % n == 0} 
# end

# def find_prime_factors
#   @factors.each do |int|
#     primes = (2..int**0.5).select do |i|
#       int % i == 0
#     end
#   end
# end

def largest_prime_factor(number)
  limit = number/3
  i = 3
  while i < limit
    if number % i == 0 && prime?(number/i)
      number/i
    end
    i += 2
  end
end

def prime?(number)
  return false if number < 2
  return true if number == 2

  limit = number ** 0.5
  (2..limit).each do |i|
    return false if number % i == 0
  end
  return true
end