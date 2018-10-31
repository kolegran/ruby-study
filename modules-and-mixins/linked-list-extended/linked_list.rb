require_relative 'sorter'

class LinkedList
  extend Sorter

  attr_accessor :linked_list
  attr_accessor :head

  def initialize
    @linked_list = []
    @head = nil
  end

  def self.list_to_array(list)
    arr = []
    (list.linked_list).map { |obj| arr << obj.key }

    arr
  end

  def self.array_to_list(array)
    list = LinkedList.new
    array.each { |val| list.insert(Node.new(val)) }

    list
  end

  def insert(node)
    @linked_list.unshift(node)

    update_pointers
  end

  def search(key)
    elem = @linked_list.find { |k| k.key == key }

    puts "The element of the list not found..." if !elem

    elem
  end

  def delete(found_node)
    raise "The list is empty" if @linked_list.empty?

    @linked_list.delete(found_node)

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
