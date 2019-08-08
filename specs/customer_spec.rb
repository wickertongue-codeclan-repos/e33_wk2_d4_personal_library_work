require("minitest/autorun")
require("minitest/rg")

require_relative("../customer")

class CustomerTest < MiniTest::Test

  def setup
    @customer1 = Customer.new("Nathan Hawthorne")
  end

  def test_get_person_name
    assert_equal("Nathan Hawthorne", @customer1.name)
  end

end
