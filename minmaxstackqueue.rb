require_relative 'minmaxstack'

class MinMaxStackQueue
  def initialize
    @stack = MinMaxStack.new 
    @in_stack = MinMaxStack.new 
  end 

  def size
    @stack.size + @in_stack.size 
  end 

  def empty?
    @stack.empty? && in_stack.empty? 
  end 

  def enqueue(val)
    @in_stack.push(val)
  end 

  def dequeue
    @stack.pop 
  end 

  def max 
    @in_stack.max
  end 

  def min 
    @in_stack.min
  end 
end 
