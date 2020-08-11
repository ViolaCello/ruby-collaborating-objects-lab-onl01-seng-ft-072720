require 'pry'
class Artist 
  attr_accessor :name 
  @@all = [] 
  def initialize(name)
    @name = name 
    @@all.push(self)
  end 
  
  def self.all 
    @@all
  end
  
     def songs
  songs = Song.all.select {|song| song.artist == self}
  end
  
  def add_song(song)
  song.artist = self
end
  
 # def self.find_or_create_by_name(name)
   # binding.pry 
  #  @@all.each do |i|
   #   
   #   if i == self then return self 
  #  else
  #    @name = name 
  #    @@all.push(self)
  #   a = self
 #    return a 
 #   end
 #   
 # end
#end
  
    def self.find_or_create_by_name(name)
    if self.find(name)
      self.find(name)
    else
      self.create(name)
    end
  end
  
end