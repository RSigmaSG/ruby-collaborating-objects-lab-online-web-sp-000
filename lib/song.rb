class Song 
  
  attr_accessor :name, :artist 
  
  @@all = []
  
  def initialize(name)
    
    @name = name
<<<<<<< HEAD
    @@all << self
=======
>>>>>>> 7d009d71da02d17174e6c391638686275ff4647e
    
  end
  
  def self.all
    
    @@all
    
  end
  
  def artist=(artist)
    
<<<<<<< HEAD
    @artist = artist
=======
    self.artist = artist
>>>>>>> 7d009d71da02d17174e6c391638686275ff4647e
    
  end
  
  def artist_name=(artist_name)
    
    self.artist = Artist.find_or_create_by_name(artist_name)
    
  end
  
  def self.new_by_filename(file_name)
    
    file_arr = file_name.gsub(".mp3", "").split(" - ")
<<<<<<< HEAD
    puts file_arr[1], file_arr[0]
    
    song = self.new(file_arr[1])
    
    song.artist_name=(file_arr[0])
      
    song
=======
    
    song = self.new
    song.name = file_arr[1]
    @@all << song
    
    artist_name=(file_arr[0])
      
>>>>>>> 7d009d71da02d17174e6c391638686275ff4647e
    
  end
  
  
end