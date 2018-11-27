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
    self.all.find{|artist| artist.name == name} ? self.all.find{|artist| artist.name == name} : self.new(name).tap {|artist| artist.save}
    #self.find(name) ? self.find(name) : self.create(name) You could have done this if you had a find and a create method separately
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end



end
