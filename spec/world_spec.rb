require 'world'

describe World do
  it 'has a rows and columns' do
    world = World.new

    expect(world).to respond_to(:rows)
    expect(world).to respond_to(:columns)
  end

  it 'creates grid' do
    world = World.new
    
    expect(world.grid).to be_an Array
  end
end
