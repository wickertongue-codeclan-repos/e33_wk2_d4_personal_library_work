require("minitest/autorun")
require("minitest/rg")

require_relative("../book")

class BookTest < MiniTest::Test

  def setup
    @book1 = Book.new("Pale Fire", "Vladimir Nabokov")
  end

  def test_get_book_title
    assert_equal("Pale Fire", @book1.title)
  end

  def test_get_book_author
    assert_equal("Vladimir Nabokov", @book1.author)
  end


end
