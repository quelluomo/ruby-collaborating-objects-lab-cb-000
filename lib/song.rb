class Song
  attr_reader :name, :artist

  def initialize(name)
    @name = name
  end

  def name=(name)
    @name = name
  end

  def artist=(artist)
    @artist = Artist.find_or_create_by_name(name)
  end

  def self.new_by_filename(file_name)
    file = file_name.split(" - ")
    artist = file[0]
    name = file[1].chomp(".mp3")
    song = self.new(song)
    song.name = name
    song.artist = artist
    song
  end

end
