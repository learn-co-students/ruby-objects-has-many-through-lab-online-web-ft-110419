class Artist 
  attr_accessor :name
  @@all_artists = []
  def initialize(name)
    @name = name 
    @@all_artists << self 
  end 
  
  def new_song(name, genre)
    song = Song.new(name, self, genre)
  end
  
  def songs 
    Song.all.select{|song| song.artist == self}
  end 
  
  def genres 
    songs.collect{|song| song.genre}
  end 
  
  def self.all
    @@all_artists 
  end
end