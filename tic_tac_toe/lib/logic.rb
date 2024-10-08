# win condition to add into the game_start method
class Logic
  def self.anyone_wins?(b)
    # Check rows
    b.each do |row|
      return true if row.uniq.length == 1 && !row.first.is_a?(Integer)
    end

    # Check columns
    (0..2).each do |col|
      column = [b[0][col], b[1][col], b[2][col]]
      return true if column.uniq.length == 1 && !column.first.is_a?(Integer)
    end

    # Check diagonals
    diag1 = [b[0][0], b[1][1], b[2][2]]
    diag2 = [b[0][2], b[1][1], b[2][0]]

    return true if diag1.uniq.length == 1 && !diag1.first.is_a?(Integer)
    return true if diag2.uniq.length == 1 && !diag2.first.is_a?(Integer)

    false
  end
  #   # check rows
  #   b.each do |row|
  #     return true if row.uniq.length == 1 && row.first.is_a?(String)
  #   end

  #   # check colums
  #   (0..2).each do |col|
  #     column = [b[0][col], b[1][col], b[1][col]]
  #     return true if column.uniq.length == 1 && column.first.is_a?(String)
  #   end

  #   # check diagonals
  #   diag1 = [b[0][0], b[1][1], b[2][2]]
  #   diag2 = [b[0][2], b[1][1], b[2][0]]

  #   return true if diag1.uniq.length == 1 && diag1.first.is_a?(String)

  #   return true if diag2.uniq.length == 1 && diag2.first.is_a?(String)

  #   false
  # end
end
