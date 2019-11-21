class Genre
  attr_accessor :name
  @@all=[]
  def initialize(name)
    self.name = name
    @@all << self
  end
  def songs
    return Song.all.filter {|s| s.genre == self}
  end
  def self.all
    return @@all
  end
  def artists
    self.songs.collect {|s| s.artist}
  end
end
