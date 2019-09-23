class Owner
  # code goes here
  attr_reader :name, :species
  attr_accessor :cats, :dogs

  @@all = []
  

  def initialize(name, species = "human")
    @name = name
    @species = species
    @@all << self
    @cats = []
    @dogs = []
  end

  def say_species
    return "I am a #{self.species}."
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all = []
  end

  def cats
    Cat.all.select {|cat| cat.owner == self }
  end

  def dogs
    Dog.all.select {|dog| dog.owner == self}
  end

  def buy_cat(cat)
    owner = self
    new_cat = Cat.new(cat, owner)
    @cats << new_cat
  end

  def buy_dog(dog)
    owner = self
    new_dog = Dog.new(dog, owner)
    @dogs << new_dog
  end

  def walk_dogs
    dogs.map {|dog| dog.mood = "happy"}
  end

  def feed_cats
    cats.map {|cat| cat.mood = "happy"}
  end

  def sell_pets
    pets = cats.concat(dogs)
    pets_arr = pets.flatten
    pets_arr.map do |pet|
      pet.mood = "nervous"
      pet.owner = nil
    end
  end

  def list_pets
    return "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."

  end
end