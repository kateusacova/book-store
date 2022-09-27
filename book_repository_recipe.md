# Book Model and Repository Classes Design Recipe

## 1. Design and create the Table

## 2. Create Test SQL seeds

## 3. Define the class names

```ruby

class Book
end

class BookRepository
end
```

## 4. Implement the Model class

Define the attributes of your Model class. You can usually map the table columns to the attributes of the class, including primary and foreign keys.

```ruby

class Book
  attr_accessor :id, :title, :author_name
end
```

## 5. Define the Repository Class interface

```ruby
class StudentRepository
  def all
    # Executes the SQL query:
    # SELECT id, title, author_name FROM books;

    # Returns an array of Book objects.
  end

```

## 6. Write Test Examples

```ruby
# 1
# Get all students

repo = BookRepository.new

books = repo.all

books.length # =>  2
```


## 7. Reload the SQL seeds before each test run

## 8. Test-drive and implement the Repository class behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._