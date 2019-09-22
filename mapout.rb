=begin

Owner [independent]
X) @@all = []
X) inititalize with name(attr_reader), species set to 'human' (attr_reader)
X) self.all
X) self.count = self.all.length
X) self.reset_all = @@all.clear
5) cats => Cat.all.select {|cats| cats.owner == self}
6) dogs => Dog.all.select {|cats| dog.owner == self}
7) buy_cat => Cat.new(name, self)
8)buy_dog => Dog.new(name, self)
9) walk_dogs => self.dogs.map {|dog| dog.mood == "happy"}
10) feed_cat => self.cat.map {|cat| cat.mood == "happy"}
11) sell_pets => self.cat.map {|cat| cat.mood == "nervous" && cat.owner == nil}
12) list_pets => (cats + dogs).flatten

Cat [dependent] => its this classes' responsibiilty keep track of owner
X)@@all = []
X) initializes with a name (attr_reader), mood (attr_accessor) and owner(attr_accessor) (association to the independent/ pass in instance variable of owner for info)
X)self.all
3)
4)
5)
6)


Dog [dependent] => its this classes' responsibility keep track of owner
X)@@all = []
X) initializes with a name (attr_reader), mood (attr_accessor) and owner(attr_accessor) (association to the independent/ pass in instance variable of owner for info)
X) self.all
3)
4)
5)
6)

    
end