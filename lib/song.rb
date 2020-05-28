
class Song
  attr_accessor :name, :artist
  attr_reader :artist_name
  @@all =[]
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
 def self.new_by_filename(file_name)
  artist_name = file_name.split(" - ")[0]
  song_name = file_name.split(" - ")[1]
  Song.new(song_name)
  end
    

def artist_name=(artist_name)
  @artist = Artist.find_or_create_by_name(artist_name)
  artist.add_song(self)
end
end