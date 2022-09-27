require_relative "../lib/database_connection.rb"
require_relative "../lib/book.rb"

class BookRepository
  def all
    result_set = DatabaseConnection.exec_params("SELECT id, title, author_name FROM books", [])
    books = []

    result_set.each { |record| 
      book = Book.new
      book.id = record["id"]
      book.title = record["title"]
      book.author_name = record["author_name"]

      books << book
    }
    
    books
  end
end

