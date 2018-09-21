#define the class

class Song

  #####################################################################
    attr_reader :name, :artist
  ####################################################################

  def initialize(name, artist)

    @name = name
    @artist =  artist

  end

## METHODS
######################################################################
  def play(song)
    return "Do you remember..."
  end
######################################################################

end #class end
