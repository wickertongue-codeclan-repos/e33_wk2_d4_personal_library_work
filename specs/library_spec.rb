require("minitest/autorun")
require("minitest/rg")

require_relative("../library")
require_relative("../customer")
require_relative("../book")

class LibraryTest < MiniTest::Test

  def setup
    @library1 = Library.new("East End Library")
    @customer1 = Customer.new("Nathan Hawthorne")
    @book1 = Book.new("Pale Fire", "Vladamir Nabokov")
    @book2 = Book.new("Crash", "J G Ballard")
  end

  # def test_get_library_name
  #   assert_equal("East End Library", @library1.name)
  # end
  #
  # def test_add_book_to_inventory__1_book
  #   @library1.add_book_to_inventory(@book1)
  #   assert_equal(1, @library1.count_inventory)
  # end
  #
  # def test_add_book_to_inventory__2_books
  #   @library1.add_book_to_inventory(@book1)
  #   @library1.add_book_to_inventory(@book2)
  #   assert_equal(2, @library1.count_inventory)
  # end
  #
  # def test_books_on_loan__1_book
  #   @library1.loan_book_to_customer(@customer1, @book1)
  #   assert_equal(1, @library1.count_books_on_loan)
  # end

  def test_get_book_and_customer_to_hash__test_get_array
    @library1.book_and_customer_to_hash(@customer1, @book1)
    assert_equal(["Pale Fire", "Vladamir Nabokov", "Nathan Hawthorne"], @library.book_and_customer_to_hash)
  end

end
