# Tic-tac-toe game from the terminal in ruby code starts here
require_relative('lib/board')
require 'pry'

def game_start
  player_2_selection = ''
  puts 'Welcome to the tic tac toe game, take your seat and go ahead...'
  puts 'Player 1 please select your position to start'
  puts Board.new.print
  player_1_selection = gets.chomp

  puts Board.update(player_1_selection)
  puts Board.new.print
end

game_start
