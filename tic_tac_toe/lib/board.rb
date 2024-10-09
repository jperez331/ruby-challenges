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

  def update(player_selection, player_marker)
    @board.each do |sub_arr|
      sub_arr.each_with_index do |value, index|
        sub_arr[index] = player_marker if value == player_selection
      end
    end
  end

  def valid_selection?(player_selection)
    @board.flatten.include?(player_selection)
  end

  def winner?(marker)
    # Check rows
    @board.each do |row|
      return true if row.uniq.length == 1 && !row.first.is_a?(Integer)
    end

    # Check columns
    (0..2).each do |col|
      column = [@board[0][col], @board[1][col], @board[2][col]]
      return true if column.uniq.length == 1 && !column.first.is_a?(Integer)
    end

    # Check diagonals
    diag1 = [@board[0][0], @board[1][1], @board[2][2]]
    diag2 = [@board[0][2], @board[1][1], @board[2][0]]

    return true if diag1.uniq.length == 1 && !diag1.first.is_a?(Integer)
    return true if diag2.uniq.length == 1 && !diag2.first.is_a?(Integer)

    false
  end
end
