require_relative 'cell'

class World

  attr_reader :rows, :columns, :grid

  def initialize(rows:, columns:)
    @rows = rows
    @columns = columns
    @grid = Array.new(rows) do |row|
      Array.new(columns) do |columns|
        Cell.new
      end
    end
  end
end
