require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'game'
require 'player'
require 'boardcase'
require 'board'



def perform
  system "clear"
  my_game = Game.new
  my_game.start_first_game
  cycle = true
  while cycle
    system "clear"
    my_game.refresh_board
    turn = my_game.who_begin
    my_game.turn_play(turn)
    my_game.next_game ? cycle : cycle = false
    system "clear"
    my_game.reset_game
  end
end

perform()