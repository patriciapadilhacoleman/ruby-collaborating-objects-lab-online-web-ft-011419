require 'pry'
class MP3Importer
  
  attr_accessor :path
  
  def initialize(path)
    
    @path = path
    
    
  end
  
  def files
    
    
    files = Dir.entries(@path)
    files = files.select {|filename| filename.include? ".mp3"}
      
    
    
  
  end
  
  def import
    
    
    files.each {|filename| Song.new_by_filename(filename)}
      
  
    
  end

end