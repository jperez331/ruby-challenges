# Create board class to print the board an its interactions with the players
class Board
  include Enumerable

  def initialize
    @board = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
  end

  def print
    puts "#{@board[0]}\n#{@board[1]}\n#{@board[2]}"
  end

  def each(&block)
    @board.each do |sub_arr|
      sub_arr.each(&block)
    end
  end

  def update(player_selection)
    @board.each do |sub_arr|
      sub_arr.each_with_index do |value, index|
        sub_arr[index] = 'o' if value == player_selection
      end
    end
    nil
  end
end
