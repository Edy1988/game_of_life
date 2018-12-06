require 'cell'

describe Cell do
  it 'is dead by default' do
    expect(Cell.new().alive?).to be false
  end

  it 'can be created alive' do
    expect(Cell.new(alive: true).alive?).to be true
  end

  it 'can be created dead' do
    expect(Cell.new(alive: false).alive?).to be false
  end

  context 'death by underpopulation (fewer than 2 live neighbours)' do
    it 'dies when it has zero live neighbours' do
      cell = Cell.new(alive: true)

      cell.next_state(alive_neighbours: 0)

      expect(cell.alive?).to be false
    end

    it 'dies when it has only one live neighbour' do
      cell = Cell.new(alive: true)

      cell.next_state(alive_neighbours: 1)

      expect(cell.alive?).to be false
    end
  end

end
