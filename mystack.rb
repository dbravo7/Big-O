require 'byebug'
class MyStack
  def initialize(store = [])
    @store = []
  end 

  def peek
    @store.last 
  end 

  def size
    @store.size
  end 

  def empty?
    @store.empty?
  end 

  def max
    i = -1 
    hash = @store.map {|num| [num, i += 1]}.to_h 
    hash.max.first 
  end 

  def min
    i = -1 
    hash = @store.map {|num| [num, i += 1]}.to_h
    hash.min.first
  end 

  def pop
    @store.pop
  end 

  def push(val)
    @store.push(val)
  end 
end 