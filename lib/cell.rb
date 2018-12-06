class Cell

  def initialize(alive: false)
    @alive = alive
  end

  def alive?
    @alive
  end

  def next_state(alive_neighbours:)
    if (@alive && alive_neighbours == 2) || alive_neighbours == 3
      Cell.new(alive: true)
    else
      Cell.new(alive: false)
    end
  end

end
