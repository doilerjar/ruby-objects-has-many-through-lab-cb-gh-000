require 'pry'

class Artist
  @@all = []
  
  attr_accessor :name, :songs, :genres
  
  def initialize(name)
    @name = name
    @songs = []
    @genres = []
    
    @@all << self
  end
  
  def new_song(song_name, genre)
    song = Song.new(song_name, self, genre)

    @genres << genre
    @songs << song
    # binding.pry 
  end 
  
  def genres
    result = @songs.collect do |song|
      song.genre
    end
    @genres = result.uniq
  end
  
  def self.all
    @@all
  end

end