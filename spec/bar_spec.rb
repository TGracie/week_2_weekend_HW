require("minitest/autorun")
require("minitest/rg")
require('pry')
require_relative("../guest.rb")
require_relative("../drink.rb")
require_relative("../bar.rb")

class BarTest < MiniTest::Test

  def setup

   ####################################################################
    ## Drinks setup
    #################( Name, Brand, Price, ABV)

    @beer =  Drink.new("Original", "Innis & Gunn", 5, 7)

    # @wine = Drink.new("Reserva", "Campo Viejo", 17, 12)
    # @bubbles = Drink.new("Contevedo", "Cava", 15, 12)

    @bar = Bar.new("Globe Bar")

  end #setup end

  def test_add_drink_to_stock
    @bar.add_drink("beer", 50)
    # binding.pry
    assert_equal(1, @bar.drink_stock)
  end

  def test_drink_stock
    assert_equal(0, @bar.drink_stock)
  end

  # def test_drink_price
  #   drink_price = @bar.drink_price(@beer)
  #   binding.pry
  #   assert_equal(5, drink_price)
  # end

end #class end
