# TDD - Game of Life

* [x] Install dependencies
* [x] Setup test directory

* Cell State
  * [x] Has an ALIVE state
  * [x] Has a DEAD state
* Cell
  * [x] Should be initialized with a cell_state
  * [] Should die if it has fewer than 2 live neighbours
    * [] next_state(number_of_neighbours)
  * [] Should live with 2 or 3 live neighbours
  * [] Should die with more than 3 neighbours
  * [] Should come alive with exactly 3 neighbours
* World
  * [] Should be initialized with a given state
    * [x] Array of arrays of states
  * [] Should retrieve a cell at a given row and column
  * [] Should get the number of alive neighbours for a given cell
  * [] Should create the next state of the game

## TODO

* [ ] Game set game state
* [ ] Cell set state
