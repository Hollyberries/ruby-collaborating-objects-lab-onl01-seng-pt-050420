class Artist
  
  @@all = []
  
  attr_accessor :name, :artist, :song
  
  def initialize(name)
    @name = name
    @artist = artist
    @song = song
    @@all << self
  end

  def self.all
    @@all
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
      
  def add_song(song)
    song.artist = self
  end
  
  def self.find_or_create_by_name(name)
    self.find(name) ? self.find(name) : self.new(name)
  end
  
  def self.find(name)
    self.all.find {|artist| artist.name == name }
  end
  
  
  def print_songs
    
  end
  
end