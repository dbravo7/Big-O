require_relative 'mystack'

class StackQueue
  def initialize
    @stack = MyStack.new
    @in_stack = MyStack.new
  end 

  def size
    @stack.size + @in_stack.size 
  end 

  def empty?
    @stack.empty? 
  end 

  def enqueue(val)

  end 

  def dequeue
    @in_stack.push(@stack.pop)
  end 
end 