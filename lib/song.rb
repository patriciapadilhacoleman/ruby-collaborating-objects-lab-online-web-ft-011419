require 'pry'
class Song
  
  attr_accessor :name, :artist, :filename
  
  def initialize(name)
    
    @name = name
   
  end
  
  def self.new_by_filename(filename)
    
    artist = Artist.new(filename.split(" - ")[0]) 
    song = self.new(filename.split(" - ")[1])
    song.name = filename.split(" - ")[1]
    song.artist = artist
    binding.pry
    song
    
  end
  
  def artist(artist_name)
    
    self.artist = Artist.find_or_create_by_name(artist_name)
    
  end
  
  def artist_name(name)
    
    song.artist = Artist.find_or_create_by_name(name)
    Artist.add_song(song)
    
  end
  
end
  