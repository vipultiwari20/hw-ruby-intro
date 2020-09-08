# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  a = arr.max(2)
  a.inject(0, :+)
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  validIndexes = (0...arr.size).to_a.combination(2).select { |first, last| arr[first] + arr[last] == n }
  validIndexes.size > 0
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  s.size != 0 and #not empty string 
  s[0].match(/^[[:alpha:]]$/) and #string starts with an alphabet
  !['A','I','E','O','U'].include?(s[0].upcase) #string doesnt't start with a vowel
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
   s.size!=0 and #not empty string
   s.count('0') + s.count('1') == s.size and #contains only 0 and 1
   s.to_i(2) % 4 == 0 #number divisible by 4
end

# Part 3

class BookInStock
# YOUR CODE HERE
attr_accessor :isbn
attr_accessor :price

def initialize(isbn, price)
    if price <= 0
      raise ArgumentError, "Price must be greater than 0"
    end
    if isbn.size == 0
      raise ArgumentError, "Isbn length must be greater than 0"
    end
    @isbn = isbn
    @price = price
end

def price_as_string
  price = "%.2f"%@price.to_f()
  "$" + price
end  

end