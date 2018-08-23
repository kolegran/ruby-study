require_relative 'stack'

class StackTester
  def self.main
    stack = Stack.new

    stack.push(2)
    stack.push(616)
    stack.push(666)
    stack.push(777)
    stack.push(912)

    stack.print_stack

    stack.pop

    stack.print_stack

    stack.push(8)

    stack.print_stack
  end
end

StackTester.main
