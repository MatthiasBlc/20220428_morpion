require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'game'
require 'player'
require 'boardcase'
require 'board'
# require 'header'

# #Board.new().display_board
# myplayer = Player.new("Paul")
# myplayer.choose_case("A")


#############################################

# casetest = BoardCase.new("a1")
# player1 = Player.new('Francis','O')


# puts casetest.content

# puts casetest.fill_the_case(player1.player_symbol)


#############################################

my_game = Game.new

my_game.display_board