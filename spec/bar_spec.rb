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

    # @beer =  Drink.new("Original", "Innis & Gunn", 5, 7)
    #
    # @wine = Drink.new("Reserva", "Campo Viejo", 17, 12)

    # bubbles = Drink.new("Contevedo", "Cava", 15, 12)

    @bar = Bar.new("Globe Bar", [
      {
        name: "bub",
        price: 15,
        stock: 50
      } # hash end
    ] # array end
    ) # initialize end

  end #setup end

  def test_drink_stock
    assert_equal(1, @bar.drink_stock)
  end

  def test_add_drink_to_stock
    @bar.add_drink("First World Problems", 5, 50)
    # binding.pry
    assert_equal(2, @bar.drink_stock)
  end

  def test_drink_price
    # binding.pry
    price = @bar.drink_price("bub")
    assert_equal(15, price)
  end
  #
  def test_drink_sale
    @bar.drink_sold("bub")
    assert_equal(15, @bar.till)
    assert_equal(49, @bar.stock_level("bub"))
  end

end #class end
