class Librarian < Person
  def add_reader(library, new_reader)
    library.readers.push(new_reader)
  end

  def add_book(library, new_book)
    library.books.push(new_book)

    new_book.status = 'exist'
  end

  def book_accept(library, book)
    returned_book = library.books.find { |elem| elem.isbn == book.isbn }
    returned_book.status = 'exist'

    returned_book
  end

  def find_book_by_title(library, title)
    found_book = (library.books.find { |book| title == book.title })

    book_issue(found_book)
  end

  def find_book_by_author(library, author)
    found_book = (library.books.find { |book| author == book.author })

    book_issue(found_book)
  end

  def find_book_by_year(library, year)
    found_book = (library.books.find { |book| year == book.year })

    book_issue(found_book)
  end

  def book_issue(found_book)
    if (book_exist?(found_book))
      found_book.status = 'issued'

      return found_book
    else
      raise "Book isn\’t exist"
    end
  end

  def book_exist?(found_book)
    found_book ? found_book : nil
  end
end
