class Owner
  @@all = []
  attr_accessor :name, :pets 
  attr_reader :species 
  
  def initialize(species)
    @species = species
    @@all << self 
    @pets = {:cats => [], :dogs => []}
  end
  
  def say_species