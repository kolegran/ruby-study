class LinkedList
  attr_accessor :linked_list

  def initialize
    @linked_list = []
  end

  def list_insert(node)
    @linked_list.unshift(node)

    update_pointers
  end

  def list_search(key)
    elem = @linked_list.find { |k| k.key == key }

    raise "The element of the list not found..." if !elem

    elem
  end

  def list_delete(found_node)
    raise "The list is empty" if @linked_list.empty?

    @linked_list.delete(found_node)

    update_pointers
  end

  def print_linked_list
    @linked_list.each { |x| print x.next.to_s.ljust(10) }
    puts "\n"
    @linked_list.each { |x| print x.key.to_s.ljust(10) }
    puts "\n"
  end

private
  def update_pointers
    @linked_list.map { |node| node.next = @linked_list.index(node) }
  end
end
