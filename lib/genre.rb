class Genre 
  
  attr_accessor :name 
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all
    @@all 
  end 
  
  def songs 
    #iterates over Songs and finds songs belonging to genre 
    Song.all.find_all {|song| song.genre = self}
  end 
  
  def artists 
    #iterates over genre collection of songs, collects artists, ie call songs. then .map artists 
    songs.map {|song| song.artist}
  end 
  
end 