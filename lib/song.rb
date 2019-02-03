require 'pry'
class Song
  
  attr_accessor :name,:artistexit!
  
  def initialize(name)
    
    @name = name
   
  end
  
  def self.new_by_filename(filename)
    
    artist_song = filename.split('-')
    artist = Artist.new(artist_song[0]) 
    song = self.new(artist_song[1])
   
    song.artist = artist.save
    
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
  