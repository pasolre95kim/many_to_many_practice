class Tourist
  attr_accessor :name
@@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end
#given a string of a name, return the first tourist
#whose name matches
  def self.find_by_name(name)
    Tourist.all.find do |tourist|
      tourist.name == name
    end
  end

#returns an arry of all trips take by the "tourist"
  def trips
    Trip.all.select do |trip|
      trip.tourist == self
    end
  end

#returns array of all landmarks for the given 'Tourist'
  def landmarks
    trips.map do |trip|
      trip.landmark
    end
  end

#should create new trip for that tourist to the given landmark
  def visit_landmark(landmark)
    Trip.new(self, landmark)
  end








end
