require_relative 'empty_error'
require_relative 'format_error'
require_relative 'overflow_error'

class LinkedList
  MAX_LENGTH = 6

  attr_accessor :linked_list
  attr_accessor :head

  def initialize
    @linked_list = []
    @head = nil
  end

  def insert(node)
    raise FormatError.new("The format isn\'t valid\n\n") if !(node.is_a? Node)

    raise OverflowError.new("The list is overflow\n\n") if @linked_list.count == MAX_LENGTH

    @linked_list.unshift(node)

    update_pointers
  end

  def search(value)
    elem = @linked_list.find { |v| v.key == value }

    puts "The element of the list not found..." if !elem

    elem
  end

  def delete(value)
    raise EmptyError.new("The list is empty. Add some elements\n\n") if @linked_list.empty?

    @linked_list.delete_if { |v| v.key == value }

    update_pointers
  end

  def print_linked_list
    print "Indexes: ".ljust(15)
    @linked_list.each { |x| print @linked_list.index(x).to_s.ljust(15) }
    print "\n"
    print "Keys|pointers: ".ljust(15)
    @linked_list.each { |x| print (x.key.to_s + "|" + x.next.to_s).ljust(15) }
    print "\n"
  end

private
  def update_pointers
    @head = @linked_list.index(@linked_list.first)
    @linked_list.map { |node| node.next = @linked_list.index(node)+1 }
    @linked_list.last.next = nil
  end
end
