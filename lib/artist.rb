require 'pry'
class Artist
  
  attr_accessor :name, :songs
  @@all = []
  
  def initialize(name)
    
    @name = name
  
    @songs = []
    
  end
  
  def add_song(song)
    
    @songs << song
    
    
  end
  
  def self.find_or_create_by_name(name)
    
   
     artist = @@all.select {|artist| artist.name == name} 
     
     if artist.length == 0
      
       artist = self.new(name) 
     
     end  
    
    
    artist
   
    
  end
  
  def save
    
    @@all << self
    
  end
  
  def self.all
    
    @@all
    
  end
  
  def print_songs
    

    @songs.each {|s| puts s.name}
   
    
  end
    
  
end