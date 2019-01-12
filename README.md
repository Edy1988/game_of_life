# TDD - Game of Life

A command line app which 

## Set Up
- Clone the repo https://github.com/Edy1988/game_of_life 
- Run the command `bundle` to install dependencies

## My approach

My approach to this challenge was to first understand the requirements, which made me chose Ruby as a language since I am the most familiar with it. I have separated the logic into multiple classes to follow SOLID principles as best as I could. I have followed TDD process to complete this kata. 

## Steps

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

