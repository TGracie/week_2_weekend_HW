#define the class

class Bar

#######################################################################
  attr_accessor :stock, :till
  attr_reader :name

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
 def stock_level(drink)
   for item in @stock
     if item[:name] == drink
       return item[:stock]
     end
   end
 end

 # def add_drink(drink_to_add, stock_amount)
 #   @stock << {
 #     drink: drink_to_add,
 #     stock: stock_amount
 #   }
 # end
 #
 def drink_price(drink)
   for item in @stock
     if item[:name] == drink
       return item[:price]
     end
   end
   # drink.price
 end
 #
 def drink_sold(drink)
   for item in @stock
     if item[:name] == drink.to_s
       item[:stock] -= 1
       @till += item[:price]
       # binding.pry
     end
   end
 end


 ## ENDING UP FAR TOO COMPLEX, NICE IDeA BUT NOT WORTH THE HASSLE

 def add_drink(drink_name, price, stock_level)
   @stock << {
     name: drink_name,
     price: price,
     stock: stock_level
   }
 end

  # def drink_price(drink)
  #   @stock[:price]
  # end

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
