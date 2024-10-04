# Tic-tac-toe game from the terminal in ruby code starts here
require_relative('lib/board')
require_relative('lib/logic')
require 'pry'

def game_start
  player_2_selection = ''
  puts 'Welcome to the tic tac toe game, take your seat and go ahead...'
  puts 'Player 1 please select your position to start'
  puts Board.print
  player_1_selection = gets.chomp.to_i

  puts Board.update(player_1_selection)
  board = Board.print

  if Logic.anyone_wins?(board)
    puts '¡Hay un ganador!'
  else
    puts 'No hay ganador todavía.'
  end
end

game_start
