require_relative '../config/environment.rb'



michelle = Tourist.new("Michelle")
patrick = Tourist.new("Patrick")
toby = Tourist.new("Toby")
stewie = Tourist.new("Patrick")


paris = Landmark.new("Eiffle Tower", "Paris")
sydney = Landmark.new("Opera House", "Sydney")
egypt = Landmark.new("Spinx", "Egypt")
rome = Landmark.new("Colloseum", "Rome")
bakery = Landmark.new("Bakery", "Paris")


trip1 = Trip.new(michelle, paris)
trip2 = Trip.new(toby, rome)
trip3 = Trip.new(patrick, sydney)
trip4 = Trip.new(patrick, egypt)
trip5 = Trip.new(toby, paris)
trip6 = Trip.new(toby, sydney)
trip7 = Trip.new(stewie, paris)






binding.pry
0
