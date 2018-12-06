require_relative 'world'
require_relative 'cell'

world = World.new(rows: 15, columns: 20)
world.grid[2][2] = Cell.new(alive: true)
world.grid[3][2] = Cell.new(alive: true)
world.grid[4][2] = Cell.new(alive: true)

world.grid[5][5] = Cell.new(alive: true)
world.grid[6][5] = Cell.new(alive: true)
world.grid[5][6] = Cell.new(alive: true)
world.grid[6][6] = Cell.new(alive: true)

world.grid[7][7] = Cell.new(alive: true)
world.grid[8][7] = Cell.new(alive: true)
world.grid[7][8] = Cell.new(alive: true)
world.grid[8][8] = Cell.new(alive: true)

def print_world(world)
  world.grid.each do |columns|
    print "\n"
    columns.each do |cell|
      view = cell.alive? ? "X" : " "
      print "#{view}"
    end
  end
end

while true do
  print_world(world)
  sleep 0.5
  world = world.next_generation
end
