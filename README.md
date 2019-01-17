# BATTLESHIPS!

A tech test from week 10, Makers.

Written in Ruby (https://ruby-doc.org/)

## Hit the high seas!

### How to install the app

Fork this repository, and then clone into either an existing or new directory via the command line.

### Dependencies

The app uses the following gems:
- rspec for testing,
- simple-cov to assess test coverage,
- rubocop for linting.

Having cloned the repository and switched into the project directory from the command line, run
```
bundle install
```
in order to install these gems.

### Using the app

Once the repository has been cloned and gems installed,

### Running tests

Make sure dependencies are installed, then run rspec from the command line:
```
rspec
```
(For more information, visit http://rspec.info/.)

### Running the linter

Make sure dependencies are installed, then run rubocop from the command line:
```
rubocop
```

The linter can also be customised via the .rubocop.yml file.

(For more information, visit https://github.com/rubocop-hq/rubocop.)

## User stories

```
As a player
So that I can prepare for the game
I would like to place a ship in a board location

As a player
So that I can play a more interesting game
I would like to have a range of ship sizes to choose from

As a player
So the game is more fun to play
I would like a nice command line interface that lets me enter ship positions and shots using commands (rather than using IRB to interact with objects)

As a player
So that I can create a layout of ships to outwit my opponent
I would like to be able to choose the directions my ships face in

As a player
So that I can have a coherent game
I would like ships to be constrained to be on the board

As a player
So that I can have a coherent game
I would like ships to be constrained not to overlap

As a player
So that I can win the game
I would like to be able to fire at my opponent's board

As a player
So that I can refine my strategy
I would like to know when I have sunk an opponent's ship

As a player
So that I know when to finish playing
I would like to know when I have won or lost

As a player
So that I can consider my next shot
I would like to be able to see my hits and misses so far

As a player
So that I can play against a human opponent
I would like to play a two-player game
```

## Approach

As a first step, I set out to write scalable logic which would initially be applied to a 4x4 grid with two ships, one with a length of 3 and one with a length of 2.
