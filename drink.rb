#define the class

class Drink

#######################################################################
  attr_accessor :name, :brand, :price, :abv

#######################################################################
  def initialize(name, brand, price, alcohol_content)

    @name = name
    @brand = brand
    @price = price
    @abv = alcohol_content


  end
#######################################################################

end #class end

# stock [
#   {
#     drink: @beer
#     stock: 200
#   },
#
#
# ]
#  @beer =  Drink.new("Original", price, abv)
#
#  stock{:drink}.price * stock{:stock}
