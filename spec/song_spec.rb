require("minitest/autorun")
require("minitest/rg")
require_relative("../song.rb")
# require_relative("../pub.rb")
# require_relative("../customer.rb")
# require_relative("../food.rb")

class SongTest < MiniTest::Test


  #####################################################################
  def test_song_has_name

    september = Song.new("September", "Earth Wind & Fire")

    assert_equal("September", september.name)

  end

  ######################################################################
  def test_song_can_play
    september = Song.new("September", "Earth Wind & Fire")

    assert_equal("Do you remember...", september.play(september))
  end

end # page end
