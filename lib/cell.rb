class Cell

  def initialize(alive: false)
    @alive = alive
  end

  def alive?
    @alive
  end

  def next_state(alive_neighbours:)
    @alive = false
  end

end
