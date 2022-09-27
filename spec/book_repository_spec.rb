require_relative '../lib/book_repository.rb'
require 'dotenv/load'

def reset_books_table
  seed_sql = File.read('spec/seeds.sql')
  connection = PG.connect({host: ENV['HOST'], dbname: "book_store_test", user: 'postgres', password: ENV['PASSWORD']})
  connection.exec(seed_sql)
end

RSpec.describe BookRepository do 
    before(:each) do 
      reset_books_table
    end
  
    it "returns an array of Book objects" do 
      repo = BookRepository.new
      books = repo.all

      expect(books.length).to eq 2
      expect(books[0].id).to eq "1"
      expect(books[0].title).to eq "Emma"
  end
end