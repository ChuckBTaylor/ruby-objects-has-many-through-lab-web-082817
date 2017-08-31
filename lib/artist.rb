class Artist

  attr_reader :name, :genres
  attr_accessor :songs

  def initialize(name = nil)
    @songs = []
    @name = name
    @genres = []
  end

  def add_song(song)
    song.artist = self
    song.genre.artists << self
    @songs << song
  end

  def genres
    self.songs.map {|song| song.genre}
  end

end
