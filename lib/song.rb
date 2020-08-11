require 'pry'
class Song 
  attr_accessor :name, :artist 
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all.push(self)
  end
  
  def self.all 
    @@all 
  end
  
  
    def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    binding.pry
  end
  
 
 def  self.new_by_filename(filename)
   song = self.new(filename)
#   binding.pry 
    song.name = filename.split(" - ")[1]
    song.artist = filename.split(" - ")[0]
    song
      end
      

end 