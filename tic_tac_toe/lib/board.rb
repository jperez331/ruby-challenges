# Create board class to print the board an its interactions with the players
class Board
  @@rows = [%w[1 2 3], %w[4 5 6], %w[7 8 9]]
  def print
    puts "#{@@rows[0]}\n#{@@rows[1]}\n#{@@rows[2]}"
  end

  def self.update(player_selection)
    @@rows.each do |sub_arr|
      sub_arr.each_with_index do |value, index|
        sub_arr[index] = 'o' if value == player_selection
      end
    end
    nil
  end
end
