class Node
  attr_accessor :key
  attr_accessor :next

  def initialize(key)
    @key = key
    @next = nil # by default
  end
end
