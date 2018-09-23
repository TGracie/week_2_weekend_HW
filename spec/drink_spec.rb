require("minitest/autorun")
require("minitest/rg")
require('pry')
require_relative("../drink.rb")
# require_relative("../pub.rb")
# require_relative("../customer.rb")
# require_relative("../food.rb")

class DrinkTest < MiniTest::Test

  def test_drink_details
    beer = Drink.new("Original", "Innis & Gunn", 4, 7)
    assert_equal("Original", beer.name)
    assert_equal("Innis & Gunn", beer.brand)
    assert_equal(4, beer.price)
    assert_equal(7, beer.abv)
  end


end #Class/Test end
