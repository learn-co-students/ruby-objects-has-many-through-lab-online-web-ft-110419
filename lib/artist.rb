class Artist
  attr_accessor :name, :songs
  @@all = []
 def initialize(name)
   self.name = name
   @@all << self
 end
 def self.all
   return @@all
 end
 def songs
   return Song.all.filter{|s| s.artist == self}
 end
 def new_song(song_name, song_genre)
    return Song.new(song_name, self, song_genre)
 end
 def genres
   self.songs.collect {|s| s.genre }
 end
end
