require_relative 'cell'

class World

  attr_reader :grid

  def initialize(rows:, columns:)
    @grid = Array.new(rows) do
      Array.new(columns) do
        Cell.new
      end
    end
  end

  def next_generation
    @grid.each_with_index do |columns, row|
      columns.each_with_index do |cell, column|
        alive_neighbours = live_neighbours_at(row, column)
        cell.next_state(alive_neighbours: alive_neighbours)
      end
    end
  end

private
  def live_neighbours_at(row, column)
    (is_alive_at(row-1, column) ? 1 : 0) +
    (is_alive_at(row+1, column) ? 1 : 0) +
    (is_alive_at(row, column-1) ? 1 : 0) +
    (is_alive_at(row, column+1) ? 1 : 0) +
    (is_alive_at(row+1, column+1) ? 1 : 0) +
    (is_alive_at(row-1, column-1) ? 1 : 0) +
    (is_alive_at(row+1, column-1) ? 1 : 0) +
    (is_alive_at(row-1, column+1) ? 1 : 0)
  end

  def is_alive_at(row, column)
    return false if row < 0
    return false if column < 0
    return false if @grid[row].nil?
    return false if @grid[row][column].nil?

    @grid[row][column].alive?
  end

end
