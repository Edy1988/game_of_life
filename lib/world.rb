require_relative 'cell'

class World

  attr_reader :grid

  def initialize(rows:, columns:)
    @grid = Array.new(rows) do |row|
      Array.new(columns) do |columns|
        Cell.new
      end
    end
  end
end
