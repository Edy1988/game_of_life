require 'world'
require 'cell'

describe World do

  it 'builds a grid (row x colum)' do
    world = World.new(rows: 10, columns: 5)

    expect(world.grid.length).to eq 10

    world.grid.each do |columns|
      expect(columns.length).to eq 5
    end
  end

  it 'starts with dead cells' do
    world = World.new(rows: 10, columns: 5)

    world.grid.each do |columns|
      columns.each do |cell|
        expect(cell.alive?).to be false
      end
    end
  end

end

describe 'World next generation' do
  it 'update cell states with number of live neighbours' do
    world = World.new(rows: 2, columns: 2)
    world.grid[0][0] = spy(:cell_0_0, alive?: true)
    world.grid[0][1] = spy(:cell_0_1, alive?: false)
    world.grid[1][0] = spy(:cell_1_0, alive?: true)
    world.grid[1][1] = spy(:cell_1_1, alive?: false)

    world.next_generation

    expect(world.grid[0][0]).to have_received(:next_state).with({:alive_neighbours=>1})
    expect(world.grid[0][1]).to have_received(:next_state).with({:alive_neighbours=>2})
    expect(world.grid[1][0]).to have_received(:next_state).with({:alive_neighbours=>1})
    expect(world.grid[1][1]).to have_received(:next_state).with({:alive_neighbours=>2})
  end
end
