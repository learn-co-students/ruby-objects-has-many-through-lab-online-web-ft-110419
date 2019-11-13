class Genre 
  attr_accessor :name
  @@all_genres = []
  def initialize(name)
    @name = name 
    @@all_genres << self 
  end 
  
  def songs 
    Song.all.select{|song| song.genre == self}
  end 
  
  def artists 
    songs.collect {|song| song.artist}
  end
  
  def self.all 
    @@all_genres 
  end
end