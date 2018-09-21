# define the class

class Guest

  attr_reader :name, :age, :fav_song
  attr_accessor :wallet

  def initialize(name, age, wallet, favourite_song)

    @name = name
    @age = age
    @wallet = wallet
    @fav_song = favourite_song

  end

## METHODS
######################################################################
  def pay(fee)
    # if @wallet >= fee
      @wallet -= fee
    # else
    #   return "I don't have enough money!"
    # end

  end

######################################################################
  def cheer(playlist)

    for song in playlist
      if song.name == @fav_song  #adding .name to song works?
        #without .name it is the entire song object not the title
        return "Whoo!"
      end
    end

  end
#######################################################################


end #class end
