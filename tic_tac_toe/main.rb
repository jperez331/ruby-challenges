# Tic-tac-toe game from the terminal in ruby code starts here
require_relative('lib/board')
require 'pry'

def game_start
  board = Board.new
  current_player = 'X'

  loop do
    board.print
    puts "Player #{current_player}, select a number from 1 to 9:"
    selection = gets.chomp.to_i

    if board.valid_selection?(selection)
      board.update(selection, current_player)
      if board.winner?(current_player)
        board.print
        puts "The player #{current_player} wins!!!"
        break
      end
      current_player = current_player == 'X' ? 'O' : 'X' # change the player
    else
      puts 'Invalid selection, try again!'
    end
  end
end

game_start
