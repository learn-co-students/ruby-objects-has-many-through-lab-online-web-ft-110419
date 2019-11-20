class Song 
  attr_accessor :name
  attr_reader :artist, :genre
  
  @@all = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@all << self
  end
  
  def artist=(artist_obj)
    @artist = artist_obj
  end
  
  def genre=(genre_obj)
    @genre = genre_obj
  end
  
  def self.all
    @@all
  end
  
end