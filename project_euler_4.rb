# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

def palindrome?(number)
  number == number.to_s.reverse.to_i
end

def find_palindromes
  palindromes = []
  i = 0
  while i < 1000000
    if palindrome?(i)
      palindromes << i
    end
    i+=1
  end
end

def largest_palindrome
  palindromes = []
  x = 10
  y = 10
  product = x*y
  until x == 100
    palindromes << [product, x, y] if palindrome?(product)
    x += 1
  end
  palindromes
end
