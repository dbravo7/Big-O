require_relative 'mystack'

class MinMaxStack
  def initialize
    @stack = MyStack.new 
  end 

  def peek
    @stack.last 
  end 

  def size
    @stack.size
  end 

  def empty?
    @stack.empty?
  end 

  def max
    @stack.max
  end 

  def min
    @stack.min 
  end 

  def pop
    @stack.pop
  end 

  def push(val)
    @stack.push(val)
  end 
end 