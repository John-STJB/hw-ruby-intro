# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0, :+)
end

def max_2_sum arr 
  # YOUR CODE HERE
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  end  
  
  
  a1 = [arr[0],arr[1]].max
  a2 = [arr[0],arr[1]].min
  
  i = 2
  while i < arr.length do
    if a1 < arr[i] && a2 < arr[i]
      a2 = a1
      a1 = arr[i]
    elsif a1 >= arr[i] && arr[i] > a2
      a2 = arr[i]
    end
    i += 1 
  end  
  
  return a1+a2
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.length == 0 || arr.length == 1
    return false
  end
  
  i = 0
  while i < arr.length-1 do
    j = i + 1
    while j < arr.length do 
      if arr[i] + arr[j] == n 
        return true
      end
      j += 1
    end
    i += 1
  end
  
  return false
  
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  #print(s[0].ord)
  if s == ""  
    return false
  end
  
  if s[0].ord < 65 || (90 < s[0].ord and s[0].ord < 97) || s[0].ord > 122
   return false
  end
  
  if "aeiouAEIOU".include? s[0]
    return false
  end
  return true
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.length == 0
    return false
  end
  
  i = s.length-1
  record = ""
  arr = ["1", "0", " "] 
  while i > -1 do 
    if  !arr.include?(s[i]) then
      return false
    end
    
    if record.length <= 1 and (s[i] == "1" || s[i] == "0")
      record = s[i] + record
    end
    i -= 1
  end
  
  if record == "00" or record == "0"
    return true
  end
  
  return false
end

# Part 3

class BookInStock
# YOUR CODE HERE
 
  def initialize isbn1, price
    if isbn1 == "" or price <= 0
      raise ArgumentError
    end
    @isbn = isbn1
    @price = price
  end
  
  attr_reader :isbn, :price
  #def isbn
  #  @isbn
  #end
  
  #def price
  #  @price
  #end
  
  #attr_writer :isbn, :price 
  def isbn=(new_isbn)
    if new_isbn == ""
      raise ArgumentError
    end
    @isbn = new_isbn
  end
  
  def price=(new_price)
    if new_price <= 0
      raise ArgumentError
    end
    @price = new_price
  end
  
  def price_as_string
    
    return "$" + format("%0.2f", @price).to_s 
  end

end
