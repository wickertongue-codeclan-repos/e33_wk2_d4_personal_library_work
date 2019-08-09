class Library

  attr_reader :name

  def initialize(name)
    @name = name
    @inventory = []
    @books_on_loan = []
  end

  def add_book_to_inventory(book)
    @inventory.push(book)
  end

  def count_inventory
    @inventory.count
  end

  def loan_book_to_customer(customer, book)
    @inventory.delete(book)
    @books_on_loan.push(book)
  end

  def book_and_customer_to_hash(book, customer)
    temp_book_array = []
    temp_book_array.push(book, customer)
    p temp_book_array
  end

  def count_books_on_loan
    @books_on_loan.count
  end

end
