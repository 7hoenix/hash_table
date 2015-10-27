class Node
  attr_reader :key, :value

  def initialize(key, value, link)
    @key = key
    @value = value
    @next = link
  end
end
