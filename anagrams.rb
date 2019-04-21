require 'byebug'

#O(n!) factorial time 
#O(n!) factorial space 
def first_anagram?(word1, word2)
  anagrams = []
  arr = word1.chars 

  arr.permutation.each do |subArr|
    anagrams << subArr.join("")
  end 
  p anagram?(anagrams, word2) 
end 

def anagram?(word_list, word2)
  word_list.include?(word2)
end 

#O(n^2) quadratic time 
#O(n) linear space 
def second_anagram?(word1, word2)
  word2_arr = word2.chars

  word1.chars.each_with_index do |char, idx|
    remove_idx = word2_arr.index(char)
    word2_arr.delete_at(remove_idx) if remove_idx
  end 
 p word2_arr.empty? 
end 

#O(n log n) loglinear time 
#O(n) linear space 
def third_anagram?(word1, word2)
  first = word1.chars.sort.join("")
  second = word2.chars.sort.join("")

  p first == second 
end 

# def bubble_sort(word)
#   alpha = "abcdefghijklmnopqrstuvwxyz".split("")
#   w = word.chars 
#   length = w.length - 2
#   sorted = false 

#   while !sorted
#     sorted = true 

#     (0..length).each do |i|
#       if alpha.index(w[i]) > alpha.index(w[i+1])
#         w[i], w[i+1] = w[i+1], w[i] 
#         sorted = false 
#       end 
#     end 
#   end 
#   w.join("")
# end 



if $PROGRAM_NAME == __FILE__
  # anagram?("gizmo", "sally")    #=> false
  first_anagram?("gizmo", "sally")    #=> false
  second_anagram?("gizmo", "sally")    #=> false
  third_anagram?("gizmo", "sally")    #=> false
  # anagram?("elvis", "lives")    #=> true
  first_anagram?("elvis", "lives")    #=> true
  second_anagram?("elvis", "lives")    #=> true
  third_anagram?("elvis", "lives")    #=> true
end 