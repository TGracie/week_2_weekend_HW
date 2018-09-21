require("minitest/autorun")
require("minitest/rg")
require_relative("../guest.rb")
require_relative("../song.rb")
# require_relative("../customer.rb")
# require_relative("../food.rb")

class SongTest < MiniTest::Test

  def setup

    @Tom = Guest.new("Thomas", 24, 150, "Shotgun")

  end

  ####################################################################
  ####################################################################

  def test_guest_details

    assert_equal("Thomas", @Tom.name)
    assert_equal(24, @Tom.age)
    assert_equal(150, @Tom.wallet)
    assert_equal("Shotgun", @Tom.fav_song)

  end

#######################################################################
  def test_guest_pay_room_fee
    @Tom.pay(50)
    assert_equal(100, @Tom.wallet)
  end

  # def test_guest_cant_pay_room_fee
  #
  #   dom = Guest.new("Dom", 30, 20, "September")
  #   dom.pay(50)
  #   assert_equal("I don't have enough money!", dom.pay(50))
  #
  # end
# customer doesn't check they have enough the room does, good test just in the wrong place

end #class end
