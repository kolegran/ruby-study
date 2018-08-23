class Stack
  MAX_LENGTH = 100

  attr_accessor :stack

  def initialize(stack = [])
    @stack = stack
  end

  def pop
    stack_underflow

    @stack.delete(@stack.last)
  end

  def push(element)
    stack_overflow

    @stack << element
  end

  def stack_underflow
    raise "Stack underflow" if @stack.count.zero?
  end

  def stack_overflow
    raise "Stack overflow" if @stack.count == MAX_LENGTH
  end

  def print_stack
    puts @stack.join(', ')
  end
end
