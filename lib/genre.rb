class Genre

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
    Song.all.select {|song| song.genre == self}
  end

  def artists
    artists = []
    songs.each do |song|
      artists << song.artist if !artists.include? song.artist && song.genre == self
    end
    artists
  end
end
