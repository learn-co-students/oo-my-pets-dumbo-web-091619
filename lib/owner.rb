require 'pry'
class Owner
  # code goes here

  attr_reader :name, :species
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
    @species = species
    @pets = {:dogs => [], :cats => []}
  end

  def species
    @species = "human"
  end

  def say_species
      "I am a #{@species}."
  end

  def self.all
    @@all
  end 

  def self.count
    @@all.size
  end

  def self.reset_all
      @@all.clear
  end

  def cats
    Cat.all.select{ |cat| cat.owner == self}
  end

  def dogs
    Dog.all.select{ |dog| dog.owner == self}
  end

  def buy_cat(name) # Can buy a cat that is an instance of the Cat class, knows about its cats
    @pets[:cats] << Cat.new(name, self) # The reason for the self is because the Cat class requires 2 arguments, since we self. The Cat class that 2 
                        # arguments, name and owner. The self on the (name, self) self is now the owner. same is line 48
    # Another way to type line 42 is cat = Cat.new(name, self)
  end

  def buy_dog(name) # can buy a dog that is an instance of the Dog class, knows about its dogs
    @pets[:dogs] << Dog.new(name, self)
    # Another way to type line 48 is dog = Dog.new(name, self)
  end

  def walk_dogs # walks the dogs which makes the dogs' moods happy
    Dog.all.select{ |dog| dog.mood = "happy"}
  end

  def feed_cats # feeds cats which makes the cats' moods happy
    Cat.all.select { |cat| cat.mood = "happy"} 
  end

  def sell_pets
     Dog.all.select {|name| name.mood = "nervous"}
     Cat.all.select { |name| name.mood = "nervous"}
     
     Dog.all.select { |name| name.owner = nil}
     Cat.all.select { |name| name.owner = nil}
  end

  def list_pets
    "I have #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

end

# binding.pry
# 0