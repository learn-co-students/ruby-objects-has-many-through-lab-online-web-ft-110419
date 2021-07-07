class Genre 
  attr_accessor :name 
  @@all = []
  def initialize(name)
    @name = name 
    @@all << self
  end 
  
  def songs 
    Song.all.collect {|song| song}
  end 
  
  def self.all 
    @@all 
  end 
  
  def artists 
    Song.all.collect {|song| song.artist }
  end 
  
end 