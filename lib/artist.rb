require "pry"
class Artist 
  attr_accessor :name, :genre, :songs
  @@all = []
  def initialize(name)
    @name = name 
    @genre = genre
    @songs = songs
    @@all << self
  end 
  
  def self.all 
    @@all
  end 
  def new_song(name, genre)
    Song.new(name, self, genre)
  end
  
  def genres 
     songs.collect {|g| g.genre}
  end
  
  def songs 
    Song.all.select {|song| song.artist == self }
  end 
  
  
end 