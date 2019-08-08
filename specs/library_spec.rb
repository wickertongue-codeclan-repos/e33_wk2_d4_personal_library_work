require("minitest/autorun")
require("minitest/rg")

require_relative("../library")

class LibraryTest < MiniTest::Test

  def setup
    @library1 = Library.new("East End Library")
  end

  def test_get_library_name
    assert_equal("East End Library", @library1.name)
  end

end
