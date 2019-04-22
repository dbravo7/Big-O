require 'byebug'

#O(n^2) quadratic time
#O(1) constant space  
def bad_two_sum?(arr, target)

  arr.each_with_index do |ele1, idx1|
    arr.each_with_index do |ele2, idx2|
      if idx2 > idx1 && ele1 + ele2 == target
        return p true
      end 
    end 
  end 
  p false 
end 

#O(nlogn) linearithmic time 
#O(n) linear space
def okay_two_sum?(arr, target)
  debugger 
  sorted = arr.sort

  sorted.each_with_index do |ele, i|
    ans =  sorted.bsearch_index {|ele2| (target - ele) <=> ele2}
    return p true if ans && ans != i
  end 
  p false 
end 

# O(n) linear time 
# O(n) linear complexity
def better_two_sum?(arr, target)
  hash = {}

  arr.each do |ele|
    return p true if hash[target - ele]
    hash[ele] = true
  end 
  p false 
end 


if $PROGRAM_NAME == __FILE__
  arr = [0, 1, 5, 7]
  # two_sum?(arr, 6) # => should be true
  # bad_two_sum?(arr, 6) # => should be true
  # okay_two_sum?(arr, 6) # => should be true
  better_two_sum?(arr, 6) # => should be true
  # two_sum?(arr, 10) # => should be false
  # bad_two_sum?(arr, 10) # => should be false
  # okay_two_sum?(arr, 10) # => should be false
  better_two_sum?(arr, 10) # => should be false
end 