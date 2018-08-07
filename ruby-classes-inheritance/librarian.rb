class Librarian < Person
  def add_reader(library, new_reader)
    library.readers.push(new_reader)
  end

  def add_book(library, new_book)
    library.books.push(new_book)

    new_book.status = "exist"
  end

  def book_accept(library, book)
    (library.books.find { |elem| elem.isbn == book.isbn }).status = "exist"
  end

  def find_book_by_title(library, title)
    found_book = book_exist?(library.books.find { |book| title == book.title })
    found_book.status = "issued"

    found_book
  end

  def find_book_by_author(library, author)
    found_book = book_exist?(library.books.find { |book| author == book.author })
    found_book.status = "issued"

    found_book
  end

  def find_book_by_year(library, year)
    found_book = book_exist?(library.books.find { |book| year == book.year })
    found_book.status = "issued"

    found_book
  end

  def book_exist?(found_book)
    found_book.nil? ? "Book isn\'t exist" : found_book
  end
end
