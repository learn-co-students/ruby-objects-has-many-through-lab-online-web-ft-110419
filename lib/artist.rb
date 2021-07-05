class Artist
 
  @@all = []
  
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def new_song(title, genre)
    Song.new(title, self, genre)
  end

  def genres
    genres = []
    self.songs.each do |song|
      genres <<  song.genre if !genres.include? song.genre && song.genre == self
    end
    genres
  end

end
