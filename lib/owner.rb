require 'pry'

class Owner

  attr_reader :name, :species, :say_species

  @@all = []

  def initialize(name)
    @species = "human"
    @name = name
    @say_species = "I am a human."
    @@all << self
  end

  def self.all  
    @@all
  end
  
  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

  def cats 
    Cat.all.select do |cat|
      cat.owner == self
    end
  end

  def dogs
    Dog.all.select do |dog|
      dog.owner == self
    end
  end

  def buy_cat(name)
    Cat.new(name, self)
  end

  def buy_dog(name)
    Dog.new(name, self)
  end

  
  # def buy_dog(name)
  #   Dog.all.select do |dog|
  #     if dog.name == name
  #       dog.owner == self
  #     end
  #   end
  # end
        

  def walk_dogs
    Dog.all.each do |dog|
      if dog.mood == "nervous"
        dog.mood = "happy"
      end
    end
  end

  def feed_cats
    Cat.all.each do |cat|
      if cat.mood == "nervous"
        cat.mood = "happy"
      end
    end
  end 

  def sell_pets
    self.cats.clear && self.dogs.clear
    Cat.all.each do |cat|
      cat.mood = "nervous"
      cat.owner = nil
    end
    Dog.all.each do |dog|
      dog.mood = "nervous"
      dog.owner = nil

    end
  end

  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
end


# binding.pry