require 'world'

describe World do
  it 'has a rows and columns' do
    world = World.new(10, 5)

    expect(world.rows).to eq 10
    expect(world.columns).to eq 5
  end

  it 'builds a grid which is an array' do
    world = World.new(10, 5)

    expect(world.grid.length).to eq 10
  end

  it 'builds a grid where columns are a nested array' do
    world = World.new(10, 5)

    expect(world.grid[0].length).to eq 5
  end

end
