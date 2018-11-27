require "pry"

class Artist

  attr_accessor :name, :songs

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    found_artist = self.all.find{|artist| artist.name == name}

    if found_artist
      found_artist
    else
      Artist.new(name)
    end
    #if self.all.find do |artist|
    #  artist.name == name
    #  name
    #else Artist.new(name)
    #end
  
end

end
