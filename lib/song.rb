class Song
  attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end


  def self.new_by_filename(filename)
   song = Song.new(filename.split(" - ")[1])
   artist = filename.split(" - ")[0]
   song.artist_name = artist
   binding.pry
   #song.artist = filename.split(" - ")[0]
   song
 end

end

#song = filename.split(" - ")[1]
#binding.pry
#artist = filename.split(" - ")[0]
#new_song = self.new(song)
#new_song.artist_name = artist
#song.artist = filename.split(" - ")[0]
#song
