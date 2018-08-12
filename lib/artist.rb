require 'pry'

class Artist
  @@all = []
  
  attr_accessor :name
  
  def initialize(name)
    @name = name

    @@all << self
  end
  
  def new_song(song_name, genre)
    Song.new(song_name, self, genre)
  end 
  
  def songs
    Song.all.select { |song| song.artist == self }
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