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
