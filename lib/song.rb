class Song
  attr_accessor :name
  attr_reader :artist, :genre

  @@all = []

  def initialize(name, artist, genre)
    @artist = artist
    @genre = genre
    @name = name
    save
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end



end
