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

def self.gas_mileage
  "the gas compsumption is 0 MPG"
end

def to_s 
  "the car models is #{model}, and the color is #{color} and was made in the year #{year}"
end

