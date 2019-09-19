# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  
  ret=0
  arr.each do |i|
    ret+=i
  end
  ret
end

def max_2_sum arr
  # YOUR CODE HERE
  size=arr.size
  ret=0
  if size==0
    ret=0
  elsif size==1
    ret= arr.at(0)
  else
    arr.sort!
    ret=arr.at(-1)+arr.at(-2)
  end
  ret
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.size==0
    return false
  end
  map=Hash.new(0)
  arr.each do |val|
    if map.has_key? val
      return true
    else
      map[n-val]=val
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  s.downcase
  /^[b-df-hj-np-tv-z]/i.match(s) != nil
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return true if s=="0"
  /^[10]*00$/.match(s)!=nil
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn
  attr_accessor :price
  
  def initialize isbn, price
    raise ArgumentError if isbn.empty? or price<=0
    @isbn=isbn
    @price=price
  end
  
 def price_as_string
   sprintf("$%2.2f", @price)
 end
 
end
