require_relative 'linked_list'
require_relative 'node'

class LinkedListTester
  def self.main
    linked_list = LinkedList.new   

    begin
      linked_list.delete(8)
    rescue EmptyError => error
      puts error.message

      i = 1
      6.times { linked_list.insert(Node.new(i *= 2)) }

      linked_list.print_linked_list
      puts "\n\n"

      retry
    end

    linked_list.print_linked_list
    puts "\n\n"

    begin
      linked_list.insert("str_test")
    rescue FormatError => error
      puts error.message

      linked_list.insert(Node.new(512))
    ensure
      linked_list.print_linked_list
      puts "\n\n"
    end

    begin
      file_with_data = File.open("data.txt")
    rescue StandardError => error
      puts error.message
    end

    begin
      linked_list.insert(Node.new(256))
    rescue OverflowError => error
      puts error.message
    end
  end
end

LinkedListTester.main
