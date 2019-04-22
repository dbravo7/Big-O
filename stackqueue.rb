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
    @stack.empty? && in_stack.empty? 
  end 

  def enqueue(val)
    @in_stack.push(val)
  end 

  def dequeue
    @stack.pop 
  end 
end 