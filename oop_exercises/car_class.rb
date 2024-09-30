clas MyCar

attr_accessor :year, :color, :model

def initialize(y, c, m)
  @year = y
  @color = c
  @model = m
  @speed = 0
end


def speedup
  puts "you're speeding up the car"
end

def brake
  puts "breaking..."
end

def turn_off
  puts"the car is turned off"
end

def turn_on
  puts "the car is turned on"
end