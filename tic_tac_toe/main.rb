# Tic-tac-toe game from the terminal in ruby code starts here
require_relative('lib/board')
require_relative('lib/logic')
require 'pry'

def game_start
  board = Board.new
  puts 'Welcome to the tic tac toe game, take your seat and go ahead...'
  puts board

  until Logic.anyone_wins?(board)
    puts 'Player 1 please select your position to start'
    player_1_selection = gets.chomp.to_i
    board.update(player_1_selection)
    Logic.anyone_wins?(Board.update(player_1_selection))
    puts board
    player_2_selection = gets.chomp.to_i
    board.update(player_2_selection)
    Logic.anyone_wins?(Board.update(player_2_selection))
    puts board

  end

  # board = Board.new.print

  # if Logic.anyone_wins?(board)
  #   puts '¡Hay un ganador!'
  # else
  #   puts 'No hay ganador todavía.'
  # end
end

game_start
