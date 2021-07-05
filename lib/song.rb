class Song

  @@all = []

  attr_reader :title, :artist, :genre

  def initialize(title, artist, genre)
    @title = title
    @genre = genre
    @artist = artist
    @@all << self
  end

  def self.all
    @@all
  end

end
