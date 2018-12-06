class World

  attr_reader :rows, :columns, :grid

  def initialize(rows, columns)
    @rows = rows
    @columns = columns
    @grid = Array.new(rows) do |row|
      Array.new(columns) do |columns|
      end
    end
  end
end
