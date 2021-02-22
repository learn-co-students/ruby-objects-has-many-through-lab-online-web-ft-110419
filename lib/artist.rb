class Artist
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    return @@all
  end
  
  def songs
    return Song.all.select { |song| song.artist == self }
  end
  
  def new_song(name, genre)
    return Song.new(name, self, genre)
  end
  
  def genres
    return songs.map { |song| song.genre }
  end
end
