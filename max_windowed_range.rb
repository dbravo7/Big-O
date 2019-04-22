require 'byebug'

#O(n^2) quadratic time
#O(n^2) quadratic space 
def max_windowed_range(array, window_size)
  current_max_range = 0
  i = 0
  
  while array[i + window_size - 1] 
    min = array[i..(i + window_size - 1)].min 
    max = array[i..(i + window_size - 1)].max
    range = (max - min)
    current_max_range < range ? current_max_range = range : current_max_range
    i += 1
  end 
  p current_max_range
end 








if __FILE__ == $PROGRAM_NAME
  p max_windowed_range([1, 0, 2, 5, 4, 8], 2) == 4 # 4, 8
  p max_windowed_range([1, 0, 2, 5, 4, 8], 3) == 5 # 0, 2, 5
  p max_windowed_range([1, 0, 2, 5, 4, 8], 4) == 6 # 2, 5, 4, 8
  p max_windowed_range([1, 3, 2, 5, 4, 8], 5) == 6 # 3, 2, 5, 4, 8
end