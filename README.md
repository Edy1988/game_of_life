# TDD - Game of Life

* [x] Install dependencies
* [x] Setup test directory

* Cell State
  * [x] Has an ALIVE state
  * [x] Has a DEAD state
* Cell
  * [x] Should be initialized with a cell_state
  * [x] Should die if it has fewer than 2 live neighbours
    * [x] next_state(number_of_neighbours)
  * [x] Should live with 2 or 3 live neighbours
  * [x] Should die with more than 3 neighbours
  * [x] Should come alive with exactly 3 neighbours
* World
  * [X] Should be initialized with a given state
    * [x] Array of arrays of states
  * [X] Should retrieve a cell at a given row and column
  * [X] Should get the number of alive neighbours for a given cell
  * [X] Should create the next state of the game

