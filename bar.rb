#define the class

class Bar

#######################################################################
  attr_accessor :stock

#######################################################################
  def initialize(stock = [])

    @stock = stock
    @till = 0

  end
#######################################################################


{
  "Carlsberg" => 10,
  "Smirnoff" => 10,
  "JD" => 14
}

## METHODS

  def add_stock(drinks_arr)

  end

 def stock_count()
   return @stock.keys.count
 end
end #class end
