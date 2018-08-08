class Reader < Person
  def request_a_book_by_title(library, librarian, title)
    librarian.find_book_by_title(library, title)
  end

  def request_a_book_by_author(library, librarian, author)
    librarian.find_book_by_author(library, author)
  end

  def request_a_book_by_year(library, librarian, year)
    librarian.find_book_by_year(library, year)
  end

  def return_a_book(library, librarian, book)
    librarian.book_accept(library, book)
  end
end
