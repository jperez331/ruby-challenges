# Create a cypher that uses ascii numbers to encode or decode the message, this encoder allows blank spaces, special characters and caps

# encode method
def encode(phrase, shifter)
  traslated = phrase.chars.map { |c| c.ord + shifter }
  traslated.map { |c| c.chr }.join
end

# decode method
def decode(phrase, shifter)
  traslated = phrase.chars.map { |c| c.ord - shifter }
  traslated.map { |c| c.chr }.join
end
