require "digest"

class HashTable
  attr_reader :size, :table

  def initialize(size)
    @size = size
    @table = []
  end

  def push(key, value)
    if entry(key)
      entry(key).push(Node.new(key, value))
    else
      entry(key) = Node.new(key, value)
    end
  end

  def retrieve(key)
    entry(key)
  end

  def entry(key)
    table[address(key)]
  end

  def address(key)
    Digest::SHA1.hexdigest(key).to_i(16) % size
  end
end
