require("minitest/autorun")
require("minitest/rg")
require('pry')
require_relative("../song.rb")
require_relative("../guest.rb")
require_relative("../room.rb")
# require_relative("../food.rb")

class RoomTest < MiniTest::Test

  def setup
#####################################################################
    ## Songs
    @ezra = Song.new("Shotgun", "George Ezra")
    @september = Song.new("September", "Earth Wind & Fire")
    @humility = Song.new("Humility", "Gorillaz")
    @kansas = Song.new("Carry on Wayward Son", "Kansas")
    @janelle = Song.new("Make Me Feel", "Janelle Monae")
    @hallnoats = Song.new("Out of Touch", "Hall & Oats")

#####################################################################
    ## Guests
    @guest1 = Guest.new("Thomas", 24, 50, "Shotgun") #10's
    @guest2 = Guest.new("Jackie", 25, 30, "September") #70's
    @guest3 = Guest.new("Andrew", 26, 60, "Humility") #10's
    @guest4 = Guest.new("Katie", 25, 50, "Carry on Wayward Son") #70s
    @guest5 = Guest.new("Ana", 27, 50, "Make Me Feel") #10s
    @guest6 = Guest.new("Rana", 29, 50, "Out of Touch") #80's

######################################################################
    ## ROOMS
    @room1 = Room.new("70's Classics", 5, 15)
    @room2 = Room.new("90's Hits", 5, 35)
    @room3 = Room.new("10's Bangers", 2, 15)
    @room4 = Room.new("80's Smashers", 2, 15, [@ezra, @september], [@guest1, @guest2])

#####################################################################

  end
######################################################################

 ## TESTS

  def test_room_playlist

    @room1.add_song(@september)
    playlist = @room1.playlist.count

    assert_equal(1, playlist)

  end

######################################################################

  def test_room_transaction

    @room1.room_transaction(@guest1)

    assert_equal(15, @room1.till)

  end

#####################################################################

  def test_room_transaction_rejected

    @room2.room_transaction(@guest2)

    assert_equal("You don't have enough money", @room2.room_transaction(@guest2))

  end

######################################################################

  def test_room_over_capacity
    @room3.add_guest(@guest1)
    @room3.add_guest(@guest2)
    attempt = @room3.add_guest(@guest3)

    assert_equal("Sorry, room's full", attempt)
  end

######################################################################

  def test_room_head_count
    nums = @room4.head_count
    assert_equal(2, nums)

  end

######################################################################

# I want to have a function that ties in with the head count of the room to add the appropriate amount to the till so that the karaoke bar has actually made some money

  def test_money_in_for_head_count
    @room4.paid_already?
    assert_equal(30, @room4.till)
  end

   # winner winner chicken dinner

######################################################################

  def test_guest_favourite_song_and_add_song

    @room3.add_song(@ezra)
    @room3.add_guest(@guest1)

    assert_equal(1, @room3.playlist.count)
    assert_equal("Whoo!", @guest1.cheer(@room3.playlist))

  end

######################################################################
# Need to check out a guest

  def test_remove_guest_from_room
    @room4.remove_guest(@guest2)

    assert_equal(1, @room4.head_count)

  end

######################################################################
# also need to remove songs

  def test_remove_song_from_room
  @room4.remove_song(@ezra)
  #binding.pry
  assert_equal(1, @room4.playlist.count)
  end
######################################################################
  

end # class/test end
