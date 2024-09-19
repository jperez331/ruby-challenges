def encode(phrase, shifter)
  traslated = phrase.chars.map  {|c|c.ord + shifter}
  final = traslated.map {|c|c.chr}.join
  return final
end

def decode(phrase, shifter)
  traslated = phrase.chars.map  {|c|c.ord - shifter}
  final = traslated.map {|c|c.chr}.join
  return final
end

