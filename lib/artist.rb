require 'pry' 
class Artist
  attr_accessor :name, :songs
  
  @@all =[]
  def initialize(name)
    @name = name
    @@all << self
    @songs =[]
  end
  
  def self.all
    @@all
  end
  
  def add_song(song)
    self.songs << song
  end
  
  def self.find_or_create_by_name(artist_name)
    if existing_artist = self.all.find {|artist| artist.name == artist_name}
      existing_artist
    else
      Artist.new(artist_name)
    end
  end
  
  def print_songs
   self.songs.each {|songs| puts songs.name}
  end
end
