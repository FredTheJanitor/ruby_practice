Book = Struct.new(:title)

def find_book(title)
  books = []
  books << Book.new("Eloquent Ruby")

  books.find { |b| b.title == title}
end

book1 = find_book('Eloquent Ruby')
p book1 # prints book object

book2 = find_book("POODR")
p book2 # prints nil

p book1.title #guess what this does