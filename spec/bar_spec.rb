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

    @wine = Drink.new("Reserva", "Campo Viejo", 17, 12)

    bubbles = Drink.new("Contevedo", "Cava", 15, 12)

    @bar = Bar.new("Globe Bar", [
      {
        drink: bubbles,
        stock: 50
      } # hash end
    ] # array end
    ) # initialize end

  end #setup end

  def test_add_drink_to_stock
    @bar.add_drink(@beer, 50)
    # binding.pry
    assert_equal(2, @bar.drink_stock)
  end

  def test_drink_stock
    assert_equal(1, @bar.drink_stock)
  end

  def test_drink_price
    # binding.pry
    price = @bar.drink_price("Contevedo")
    assert_equal(15, price)
  end

end #class end
