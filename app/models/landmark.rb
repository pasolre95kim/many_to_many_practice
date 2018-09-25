class Landmark
  attr_accessor :name, :city
@@all = []
  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

#returns an array of all landmarks in that city
  def self.find_by_city(city)
    Landmark.all.select do |landmark|
      landmark.city == city
    end
  end

#returns an array of all trips taken to a given landmark
  def trips
    Trip.all.select do |trip|
      trip.landmark == self
    end
  end

#returns an array of all the tourists at a given landmark
  def tourists
    trips.map do |trip|
      trip.tourist
    end
  end















end
