require 'my_queue'

describe MyQueue do
  it 'creates an empty queue' do
    q = MyQueue.new

    expect(q.empty?).to eq true
    expect(q.size).to eq 0
  end

  it 'changes size when item is added' do
    q = MyQueue.new

    q.enqueue("One")

    expect(q.empty?).to eq false
    expect(q.size).to eq 1
  end

  it 'dequeues in the order items were added' do
    q = MyQueue.new

    q.enqueue("One")
    q.enqueue("Two")
    q.enqueue("Three")

    expect(q.dequeue).to eq "One"
    expect(q.dequeue).to eq "Two"
  end
end