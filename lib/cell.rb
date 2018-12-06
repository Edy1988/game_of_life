class Cell

  def initialize(alive: false)
    @alive = alive
  end

  def alive?
    @alive
  end

  def next_state(alive_neighbours:)
    return if alive_neighbours == 2
    return if alive_neighbours == 3

    @alive = false
  end

end
