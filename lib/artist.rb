class Artist 
  
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    
    @name = name
    save
    
  end
  
  def self.all
    
    @@all
    
  end
  
  def add_song(song)
    
    song.artist = self
    song
    
  end
  
  def songs 
    
<<<<<<< HEAD
    Song.all.select{|song| song.name if (song.artist == self)}
=======
    Song.all.select{|song| song.artist == self}
>>>>>>> 7d009d71da02d17174e6c391638686275ff4647e
    
  end
  
  def self.find_or_create_by_name(artist_name)
    
<<<<<<< HEAD
    if @@all.collect{|artist|artist.name}.include?(artist_name)
      return @@all.find{|artist|artist.name == artist_name}
=======
    if @@all.collect{|artist|artist.name}.include?(name)
      return @@all.collect{|artists|artist.name == name}
>>>>>>> 7d009d71da02d17174e6c391638686275ff4647e
    else
      Artist.new(artist_name)
    end
    
  end
  
  def print_songs
    
<<<<<<< HEAD
    songs().each {|song|puts song.name}
=======
    songs().each {|song|puts "song.name\n"}
>>>>>>> 7d009d71da02d17174e6c391638686275ff4647e
    
  end
  
  #private
  
  def save
    
    @@all << self
    
  end
  
end