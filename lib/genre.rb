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
  
  def artist=(artist_obj)
    @artist = artist_obj
  end
  
  def songs
    Song.all.select {|x| x.genre == self}
  end
  
  def artists
    songs.collect {|x| x.artist}
  end
  
end
  
  