class Cat
  # code goes here
  attr_reader :name
  attr_accessor :mood, :owner
  @@all = []

  def initialize(name, owner)
    @owner = owner
    @name = name
    @mood = "nervous"
    @@all << self
  end

  def self.all
    @@all
  end
  























  
  # def initailize(name, mood = "nervous")
  #   @owner = Owner.new
  #   @mood = "nervous"
  #   @@all << self
  #   # @owner = Owner.new(name)
  # end
  
  # def self.all
  #   @@all
  # end
end