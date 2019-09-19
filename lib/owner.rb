class Owner
  attr_reader :name, :species
  @@all = []
  @@count = 0
  def initialize(name)
    @name = name 
    @species = "human"
    @@all << self
    @@count +=1
  end
  def say_species
    return "I am a #{self.species}."
  end
  def self.all
    @@all
  end
  def self.count
    @@count
  end
  def self.reset_all
    @@all.clear
    @@count = 0
  end
  def cats
    Cat.all.select{|cat|
      cat.owner == self
    }
  end
  def dogs
    Dog.all.select{|cat|
      cat.owner == self
    }
  end
  def buy_cat(catname)
    Cat.new(catname, self)
  end
  def buy_dog(catname)
    Dog.new(catname, self)
  end
  def walk_dogs
     Dog.all.each{|dog| dog.mood = "happy"}
  end
  def feed_cats
    Cat.all.each{|cat| cat.mood = "happy"}
  end
  def sell_pets
    pets= Cat.all + Dog.all
    pets.each{|dog| dog.mood = "nervous"
     dog.owner = nil}
  end
  def list_pets
    return "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end

end