require("minitest/autorun")
require("minitest/rg")

require_relative("../library")
require_relative("../customer")
require_relative("../book")

class LibraryTest < MiniTest::Test

  def setup
    @library1 = Library.new("East End Library")
    @book1 = Book.new("Pale Fire", "Vladamir Nabokov")
    @book2 = Book.new("Crash", "J G Ballard")
  end

  def test_get_library_name
    assert_equal("East End Library", @library1.name)
  end

  def test_add_book_to_inventory
    @library1.add_book_to_inventory(@book1)
    @library1.add_book_to_inventory(@book2)
    assert_equal(2, @library1.count_inventory)
  end

end
