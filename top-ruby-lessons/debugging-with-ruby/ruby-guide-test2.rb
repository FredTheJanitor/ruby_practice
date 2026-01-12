Book = Struct.new(:title)

def find_book(title)
  books = []
  books << Book.new("Eloquent Ruby")

  books.find { |b| b.title == title}
end

book = find_book('Eloquent Ruby')
p book # prints book object

book = find_book("POODR")
p book # prints nil

book.name #guess what this does