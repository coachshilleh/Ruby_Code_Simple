# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  $s = 0
  arr.each { |item|
    $s += item
}
return $s
end

def max_2_sum arr
  arr = arr.sort
  arr = arr.reverse
  $s = 0
  $x = 0
  arr.each { |item|
    $s += item
    $x += 1
    if $x == 2;
      break
    end
}
return $s
end

def sum_to_n? arr, n
  if arr.length < 2;
    return false
  end
  for i in 0..(arr.length - 1) do
    for k in 0..(arr.length - 1) do
      if i != k;
        s = arr[i] + arr[k]
        if s == n;
          return true
          break
        end
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello," + " " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s == '' or s[0].count("a-zA-Z") < 1
    return false
  end
  def exclude?(string)
  !include?(string)
  end
  s = s.upcase
  return ['A','E','I','O','U'].exclude? s[0]
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s == '';
    return false
  end
  for i in 0..(s.length - 1) do;
    if s[i] != '0' and s[i] != '1';
      return false
    end
  end
  a = s.to_i(2)
  if a.modulo(4) == 0;
    return true
  end
  return false

end

# Part 3


class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    if isbn == '' or price <= 0;
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end
  
  def price_as_string()
    return '$' + ('%.2f' % @price).to_s
  end
  
  def isbn 
    @isbn
  end
  def isbn=(isbn) 
    @isbn = isbn 
  end
  def price 
    @price
  end
  def price=(price) 
    @price = price
  end
end


book = BookInStock.new('89989.12', 33.11)

puts book.isbn, book.price_as_string