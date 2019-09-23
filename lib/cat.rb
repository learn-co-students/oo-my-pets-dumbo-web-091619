class Cat
  # code goes here

  attr_reader :name
  attr_writer :owner
  attr_accessor :mood
  @@all = []
  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all << self
  end

  def owner
    @owner
  end

  def mood
    @mood
  end

  def self.all
    @@all
  end

end