require 'world'
require 'cell'

describe World do
  
  it 'builds a grid (row x colum)' do
    world = World.new(rows: 10, columns: 5)

    expect(world.grid.length).to eq 10

    world.grid.each do |column|
      expect(column.length).to eq 5
    end
  end

end
