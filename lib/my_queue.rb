class MyQueue

  def initialize
    @array = []
  end

  def empty?
    size == 0
  end

  def size
    @array.length
  end

  def enqueue(item)
    @array << item
  end

  def dequeue
    @array.shift
  end
end