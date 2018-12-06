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
end
