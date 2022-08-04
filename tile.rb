class Tile

  def self.make_tiles
    tiles = []
    20.times { tiles << self.new(true) }
    61.times { tiles << self.new(false) }
    tiles.shuffle
  end

  attr_reader :bomb
  attr_writer :display

  def initialize(bomb)
    @bomb = bomb
    @display = "  *  "
  end

  def to_s
    @display
  end

end