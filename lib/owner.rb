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
    return "I am a #{@species}."
  end
  
  def buy_dog(name_of_dog)
    @pets[:dogs] << Dog.name(name_of_dog)
  end
  
  def buy_cat(name_of_cat)
    @pets[:cats] << Cat.name(name_of_cat)
  end
  
  def walk_dogs
    @pets.collect do |species, instances|
      if species == :dogs 
        instances.each do |dog|
          dog.mood = 