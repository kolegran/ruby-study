class Book
  attr_accessor :title
  attr_accessor :author
  attr_accessor :isbn
  attr_accessor :year
  attr_accessor :pages
  attr_accessor :status

  def initialize(title, author, isbn, year, pages, status = 'indefinite')
    @title = title
    @author = author
    @isbn = isbn
    @year = year
    @pages = pages
    @status = status
  end
end
