class Artist
  
  @@all = []
  
  attr_accessor :name, :genre, :song   
  
  def initialize(name)
    @name = name 
    @@all << self  
  end 
  
  def self.all 
    @@all  
  end 
  
  def new_song(name, genre)
    #creates a new song, that song should know it belongs to that artist 
    song = Song.new(name, self, genre)
    
  end 
  
  def songs 
    #will iterate through all songs, then finds the song that belongs to the artist 
    Song.all.find_all{ |song| song.artist }
  end
  
  def genres 
    #will iterate over the artist's songs, then collects the genre of each song
    self.songs.collect{ |song| song.genre }
  end 
  
end 