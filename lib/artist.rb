class Artist
 attr_reader :name

 @@all = []

 def initialize(name)
   @name = name
   @songs = []

 end

  def name=(name)
    @name = name
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    self.all.detect {|artist| artist.name == name} ||
    self.new(name).tap {|artist| artist.save}
  end

  def print_songs
    songs.each {|song| puts song.name}
  end


end
