require_relative 'book'
require_relative 'person'
require_relative 'reader'
require_relative 'librarian'
require_relative 'library'

class LibraryTester
  def self.main
    library = Library.new

    librarian = Librarian.new('John', 'Doe', 'male', "1 Honey St. | apt. 13", 152045)

    reader1 = Reader.new('Sam', 'Baker', 'male', "16 Horizon St. | apt. 21", 651701)
    reader2 = Reader.new('Tom', 'Evans', 'male', "5 Oxford St. | apt. 1", 873362)

    book1 = Book.new("War and Peace", "Leo Tolstoy", 1342_6154_12, 1869, 1225)
    book2 = Book.new("The Picture of Dorian Gray", "Oscar Wilde", 6521_1087_56, 1890, 320)
    book3 = Book.new("Faust", "Johann Wolfgang von Goethe", 4521_6661_66, 1808, 480)
    book4 = Book.new("War and Peace", "Leo Tolstoy", 1343_6155_13, 1869, 1225)

    librarian.add_book(library, book1)
    librarian.add_book(library, book2)
    librarian.add_book(library, book3)
    librarian.add_book(library, book4)

    librarian.add_reader(library, reader1)
    puts library.print_readerlist

    librarian.add_reader(library, reader2)
    puts library.print_readerlist

    puts library.print_booklist

    take_book = reader1.request_a_book_by_title(library, librarian, "War and Peace")
    take_book = reader1.request_a_book_by_author(library, librarian, "Oscar Wilde")
    take_book = reader1.request_a_book_by_year(library, librarian, 1808)
    
    puts library.print_available_books
    puts library.print_issued_books
    puts "\n"

    reader1.return_a_book(library, librarian, take_book)

    puts library.print_available_books

    puts library.print_issued_books
  end
end

LibraryTester.main
