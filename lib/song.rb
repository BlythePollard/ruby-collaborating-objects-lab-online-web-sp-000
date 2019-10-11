class Song
  attr_accessor :artist, :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    save
     end
  
  def self.all
    @@all
  end

  def save
     @@all << self
  end
  
  def self.new_by_filename(filename)
    #parse filename to find song and artist
    #create new song instance using string from filename
    #associate new song with artist
    #return new song instance
  
    artist, song = filename.split(" - ")
    new_song = self.new(name)
    new_song.artist = artist
    new_song
  end
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
  
end