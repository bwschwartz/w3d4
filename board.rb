require_relative 'tile'

class Board
  attr_reader :grid

  def initialize
    @grid = Array.new(9) { Array.new(9) }
  end

  def populate
    tile_arr = Tile.make_tiles
    grid.map! do |row|
      row.map! do |square|
        tile_arr.shift
      end
    end
  end

  def update_adjacent(pos)


  end

  def print_grid
    grid.each do |row|
      row.each do |square|
        print square
      end
      puts
      puts
    end
  end

  def [](pos)
    row, col = pos
    @grid[row][col]
  end

  def []=(pos, val)
    row, col = pos
    @grid[row][col] = val
  end

  def reveal(pos)


  end

  def show_adjacents
  end

  def show_bombs
    grid.each do |row|
      row.each do |square|
        if square.bomb
          square.display = "  !  "
        end
      end
    end
    print_grid
  end

end


b = Board.new
b.populate
b.print_grid
puts "----------------------------------------"
b.show_bombs