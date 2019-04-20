require 'byebug'

# O(n^2) Quadratic 
def my_min(arr)
  
  arr.each do |ele1|
    smallest_ele = true 
    
    arr.each do |ele2|
      if ele2 < ele1 
        smallest_ele = false 
      end 
    end 
    p ele1 if smallest_ele
  end 
end 

#O(n) linear
def my_min_linear(arr)
  smallest_ele = arr.first

  arr.each do |ele|
    if ele < smallest_ele
      smallest_ele = ele 
    end 
  end 
  p smallest_ele
end 

def largest_contiguous_subsum(arr)
  sub_arrays = []
  arr.each_with_index do |num1, idx1|
    sub_arrays << [num1]
    arr.each_with_index do |num2, idx2|
      if idx1 != idx2 && idx2 > idx1
      sub_arrays << [num1, num2]
      end 
    end 
  end 
  p largest_sum(sub_arrays)
end 

def largest_sum(sub_arrays)
  sub_arrays.map {|arr| arr.reduce(:+)}.max
end 



if $PROGRAM_NAME == __FILE__
  list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
  my_min(list)  # =>  -5
  my_min_linear(list) #=> -5

    list2 = [5, 3, -7]
    largest_contiguous_subsum(list2) # => 8

    # possible sub-sums
    [5]           # => 5
    [5, 3]        # => 8 --> we want this one
    [5, 3, -7]    # => 1
    [3]           # => 3
    [3, -7]       # => -4
    [-7]          # => -7

    # list3 = [2, 3, -6, 7, -6, 7]
    # largest_contiguous_subsum(list3) # => 8 (from [7, -6, 7])

    # list4 = [-5, -1, -3]
    # largest_contiguous_subsum(list4) # => -1 (from [-1])

end 