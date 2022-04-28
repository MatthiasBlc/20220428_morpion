require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'game'
require 'player'
require 'boardcase'
require 'board'

cycle = true
while cycle
  system "clear"
  my_game = Game.new
  system "clear"
  my_game.refresh_board
  my_game.turn_play
  my_game.next_game ? cycle : cycle = false
  system "clear"
  my_game.reset_game
end