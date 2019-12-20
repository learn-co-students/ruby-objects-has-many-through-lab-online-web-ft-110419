class Genre 
  
  @@all = []
  
  attr_accessor :name, :artist, :song   
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def songs 
    #will iterate over all songs and finds the songs that belong to that genre
    Song.all.find_all{ |song| song.genre }
  end 
  
  def artists
    #will iterate over the genre's collection of songs, then collects the artist that owns each song 
    self.songs.collect{ |song| song.artist }
  end 
  
end 