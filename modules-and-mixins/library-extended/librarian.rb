require_relative 'logger'

class Librarian < Person
  extend Logger 

  def add_reader(library, new_reader)
    n_reader = library.readers.push(new_reader)

    r_first_name = new_reader.first_name
    r_last_name  = new_reader.last_name
    Librarian.logging("The reader #{r_first_name} #{r_last_name} added\n")

    n_reader
  end

  def add_book(library, new_book)
    library.books.push(new_book)

    Librarian.logging("The book #{new_book.title}, #{new_book.author} added\n")

    new_book.status = 'exist'
  end

  def book_accept(library, book)
    returned_book = library.books.find { |elem| elem.isbn == book.isbn }
    returned_book.status = 'exist'

    Librarian.logging("The book #{book.title}, #{book.author} accepted\n")

    returned_book
  end

  def find_book_by_title(library, title)
    found_book = (library.books.find { |book| title == book.title })

    f_book = book_exist(found_book)

    Librarian.logging("The book #{f_book.title} found by title\n")

    f_book
  end

  def find_book_by_author(library, author)
    found_book = (library.books.find { |book| author == book.author })

    f_book = book_exist(found_book)

    Librarian.logging("The book #{f_book.author} found by author\n")

    f_book
  end

  def find_book_by_year(library, year)
    found_book = (library.books.find { |book| year == book.year })

    f_book = book_exist(found_book)

    Librarian.logging("The book #{f_book.year} found by year\n")

    f_book
  end

  def book_exist(found_book)
    if (found_book)
      found_book.status = 'issued'

      Librarian.logging("The book #{found_book.title}, #{found_book.author} is exist\n")

      return found_book
    else
      Librarian.logging("The book #{found_book.title}, #{found_book.author} is not exist\n")

      raise "Book isn\'t exist!"
    end
  end
end
