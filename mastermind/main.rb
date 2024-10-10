class Mastermind
  # Usamos los caracteres Unicode para representar bolitas de colores
  COLORS = ['🔴', '🔵', '🟢', '🟡', '🟠', '🟣'] # Lista de bolitas de colores posibles

  def initialize
    @secret_code = Array.new(4) { COLORS.sample } # Genera una secuencia de 4 colores al azar
    @attempts = 0
    @max_attempts = 12
  end

  def start_game
    puts '¡Bienvenido a Mastermind!'
    puts 'Adivina la combinación de 4 colores en orden.'
    puts "Colores posibles: #{COLORS.join(' ')}"
    puts "Tienes #{@max_attempts} intentos para adivinar la secuencia secreta."

    until @attempts == @max_attempts
      guess = player_guess

      exact_matches, partial_matches = check_guess(guess)
      @attempts += 1

      puts "Aciertos exactos: #{exact_matches}, Aciertos parciales: #{partial_matches}"

      if exact_matches == 4
        puts "¡Felicidades! Adivinaste la secuencia secreta en #{@attempts} intentos."
        break
      elsif @attempts == @max_attempts
        puts '¡Lo siento! Has alcanzado el límite de intentos.'
        puts "La secuencia secreta era: #{@secret_code.join(' ')}"
      else
        puts "Intento #{@attempts} de #{@max_attempts}. Intenta de nuevo."
      end
    end
  end

  private

  def player_guess
    guess = nil
    loop do
      puts 'Introduce tu conjetura (secuencia de 4 colores usando las bolitas 🔴 🔵 🟢 🟡 🟠 🟣):'
      input = gets.chomp
      guess = input.split(' ')
      break if valid_guess?(guess)

      puts 'Conjetura inválida. Asegúrate de ingresar 4 bolitas válidas.'
    end
    guess
  end

  def valid_guess?(guess)
    guess.length == 4 && guess.all? { |color| COLORS.include?(color) }
  end

  def check_guess(guess)
    exact_matches = 0
    partial_matches = 0
    secret_code_clone = @secret_code.clone
    guess_clone = guess.clone

    # Primero busca coincidencias exactas (misma posición y color)
    guess_clone.each_with_index do |color, index|
      next unless color == secret_code_clone[index]

      exact_matches += 1
      secret_code_clone[index] = nil # Marca como ya comparado
      guess_clone[index] = nil
    end

    # Luego busca coincidencias parciales (color correcto en posición incorrecta)
    guess_clone.each_with_index do |color, index|
      if color && secret_code_clone.include?(color)
        partial_matches += 1
        secret_code_clone[secret_code_clone.index(color)] = nil # Marca como usado
      end
    end

    [exact_matches, partial_matches]
  end
end

# Iniciar el juego
game = Mastermind.new
game.start_game
