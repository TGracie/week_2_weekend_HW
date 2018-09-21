#define the class

class Room

  attr_reader :name, :fee
  attr_accessor :capacity, :patrons, :till, :playlist

  def initialize(name, capacity, fee, playlist = [], patrons = [])

    @name = name
    @capacity = capacity
    @fee = fee
    @playlist = playlist
    @patrons = patrons
    @till = 0

  end

######################################################################
  def add_song(song)
    @playlist << song
  end
#######################################################################
  def head_count
    return @patrons.count
  end
######################################################################
  def add_guest(guest)
    if @patrons.count < @capacity
      @patrons << guest
    else
      return "Sorry, room's full"
    end
  end
######################################################################
  # def take_payment
  #
  #   @till += fee  # rendered obsolete by room_transaction
  #
  # end
######################################################################
# Head count payments
  def paid_already?

    @till += fee * head_count

  end
######################################################################
  def room_transaction(guest)
    if guest.wallet >= @fee
      guest.pay(@fee)
      @till += @fee
    else
      return "You don't have enough money"
    end
  end
######################################################################


end #class end
