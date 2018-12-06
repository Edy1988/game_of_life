require 'cell'

describe 'Cell' do
  it 'is dead by default' do
    expect(Cell.new().alive?).to be false
  end

  it 'can be created alive' do
    expect(Cell.new(alive: true).alive?).to be true
  end

  it 'can be created dead' do
    expect(Cell.new(alive: false).alive?).to be false
  end

end

describe 'Alive Cell' do
  let(:cell) { Cell.new(alive: true) }

  it 'dies by underpopulation when it has zero live neighbours' do
    cell.next_state(alive_neighbours: 0)

    expect(cell.alive?).to be false
  end

  it 'dies by underpopulation when it has only one live neighbour' do
    cell.next_state(alive_neighbours: 1)

    expect(cell.alive?).to be false
  end

  it 'lives on to the next generation when it has two live neighbours' do
    cell.next_state(alive_neighbours: 2)

    expect(cell.alive?).to be true
  end

  it 'lives on to the next generation when it has three live neighbours' do
    cell.next_state(alive_neighbours: 3)

    expect(cell.alive?).to be true
  end

  it 'dies by overpopulation when it has three live neighbours' do
    cell.next_state(alive_neighbours: 4)

    expect(cell.alive?).to be false
  end

  it 'dies by overpopulation when it has only four live neighbour' do
    cell.next_state(alive_neighbours: 5)

    expect(cell.alive?).to be false
  end
end

describe 'Dead Cell' do
  let(:cell) { Cell.new(alive: false) }

  it 'becomes alive by reproduction when it has three live neighbours' do
    cell.next_state(alive_neighbours: 3)

    expect(cell.alive?).to be true
  end

  it 'stays dead' do
    cell.next_state(alive_neighbours: 0)
    expect(cell.alive?).to be false

    cell.next_state(alive_neighbours: 1)
    expect(cell.alive?).to be false

    cell.next_state(alive_neighbours: 2)
    expect(cell.alive?).to be false
  end
end
