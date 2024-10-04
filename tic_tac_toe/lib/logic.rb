# win condition to add into the game_start method
class Logic
  def self.anyone_wins?(board)
    # check rows
    board.each do |row|
      return true if row.uniq.lenght == 1 && row.first.is_a?(string)
    end

    # check colums
    (0..2).each do |col|
      column = [board[0][col], board[1][col], board[1][col]]
      return true if column.uniq.lenght == 1 && column.first.is_a?(string)
    end

    # check diagonals
    diag1 = [board[0][0], board[1][1], board[2][2]]
    diag2 = [board[0][2], board[1][1], board[2][0]]

    return true if diag1.uniq.lenght == 1 && diag1.first.is_a?(string)

    return true if diag2.uniq.lenght == 1 && diag2.first.is_a?(string)

    false
  end
end
