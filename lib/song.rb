class Song 
  attr_accessor :title, :artist 
  @@all = []
  
  def initialize(title)
    @title = title 
    @@all.push(self)
  end
  
  def self.all 
    @@all 
  end
  
 
  def self.new_by_filename(filename)
    song = self.new
    song.title = filename.split(" - ")[1]
    song
  end
    
  
end 