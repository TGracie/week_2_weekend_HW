#define the class

class Bar

#######################################################################
  attr_accessor :name, :stock

#######################################################################
  def initialize(name, stock = [])

    @stock = stock
    @till = 0

  end
#######################################################################
 ## METHODS

 def drink_stock
   @stock.count
 end

 def add_drink(drink_to_add, stock_amount)
   @stock << {
     drink: drink_to_add,
     stock: stock_amount
   }
 end

 def drink_price
   @stock[:drink][price]
 end

end #class end

# {
#   "Carlsberg" => 10,
#   "Smirnoff" => 10,
#   "JD" => 14
# }

## METHODS
 #
 #  def add_stock(drinks_arr)
 #
 #  end
 #
 # def stock_count()
 #   return @stock.keys.count
 # end
