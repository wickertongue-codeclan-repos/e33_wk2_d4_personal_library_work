class Library

  attr_reader :name

  def initialize(name)
    @name = name
    @inventory = []
  end

  def add_book_to_inventory(book)
    @inventory.push(book)
  end

  def count_inventory
    @inventory.count
  end

end
