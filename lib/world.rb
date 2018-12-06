class World

attr_reader :rows, :columns

  def initialize(rows, columns)
    @rows = rows
    @columns = columns
  end

  def grid
    Array.new(10)
  end
end
