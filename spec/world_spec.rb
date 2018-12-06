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
  let(:cell_0_0) { spy(:cell_0_0, alive?: true) }
  let(:cell_0_1) { spy(:cell_0_1, alive?: false) }
  let(:cell_1_0) { spy(:cell_1_0, alive?: true) }
  let(:cell_1_1) { spy(:cell_1_1, alive?: false) }
  let(:world) { World.new(rows: 2, columns: 2) }

  before(:each) do
    world.grid[0][0] = cell_0_0
    world.grid[0][1] = cell_0_1
    world.grid[1][0] = cell_1_0
    world.grid[1][1] = cell_1_1
  end

  it 'update cell states with number of live neighbours' do
    new_state = double(:new_state)

    expect(cell_0_0).to receive(:next_state).with({:alive_neighbours=>1}).and_return(new_state)
    expect(cell_0_1).to receive(:next_state).with({:alive_neighbours=>2}).and_return(new_state)
    expect(cell_1_0).to receive(:next_state).with({:alive_neighbours=>1}).and_return(new_state)
    expect(cell_1_1).to receive(:next_state).with({:alive_neighbours=>2}).and_return(new_state)

    new_world = world.next_generation

    expect(new_world.grid[0][0]).to eq new_state
    expect(new_world.grid[0][1]).to eq new_state
    expect(new_world.grid[1][0]).to eq new_state
    expect(new_world.grid[1][1]).to eq new_state
  end
end
