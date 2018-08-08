class Library
  attr_accessor :readers
  attr_accessor :books

  def initialize
    @readers = []
    @books   = []
  end

  def print_booklist
    print(@books)
  end

  def print_available_books
    print(@books.select { |book| book.status == 'exist' })
  end

  def print_issued_books
    print(@books.select { |book| book.status == 'issued' })
  end

  def print_readerlist
    @readers.empty? ? "List of readers is empty!" : @readers.map { |r| "#{r.first_name} #{r.last_name}" }
  end

  def print(books)
    books.empty? ? "Booklist is empty!" : books.map { |b| "#{b.author} - #{b.title} : #{b.year.to_s}" }
  end
end
