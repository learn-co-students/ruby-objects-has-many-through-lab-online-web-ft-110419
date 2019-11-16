class Genre
    attr_accessor :name, :songs, :artists

    @@all = []

    def initialize(type)
        @name = type
        @@all << self
        @songs = []
        @artists = []
    end

    def self.all   
        @@all
    end
end