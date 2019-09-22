require 'pry'
class Owner
  @@all = []
  attr_reader :name, :species
   def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end

  def say_species
    "I am a #{self.species}."
  end

  def self.all 
    @@all
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    @@all.clear
  end

  def cats
    Cat.all.select {|cats| cats.owner == self}
  end
  
  def buy_cat(name) 
    new_cat = Cat.new(name, self) 
    new_cat
  end

  def dogs
    Dog.all.select {|dog| dog.owner == self}
  end

  def buy_dog(name)
  new_dog = Dog.new(name, self)
  new_dog
  end
    
  def walk_dogs
    self.dogs.map {|dog| dog.mood = "happy"}
  end

  def feed_cats
    self.cats.map {|cat| cat.mood = "happy"}
  end

  def sell_pets
    all_pets = (cats + dogs).flatten
    all_pets.map do |animal| 
      animal.mood = "nervous" 
      animal.owner = nil
      # binding.pry
    end

  end

  def list_pets 
 "I have #{self.cats.count} dog(s), and #{self.dogs.count} cat(s)."
  end

  
end