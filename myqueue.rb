
class MyQueue
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

  def enqueue(val)
    @store.unshift(val)
  end 

  def dequeue
    @store.pop 
  end 

end 