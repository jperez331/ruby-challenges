require 'pry'
#adding pry to debbug in the irb console
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

#we only generate one method to hanlde all validations

def finder(substring, dictionary)
  clearedstr = substring.downcase.split(' ')
  result = Hash.new(0)
  clearedstr.each do |sub|
    if dictionary.include?(sub)
      result[sub] += 1
      
    end
  end
  return result
end


finder("down go going", dictionary)

binding.pry