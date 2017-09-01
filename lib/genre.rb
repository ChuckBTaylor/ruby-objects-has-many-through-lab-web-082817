class Genre

  attr_reader :artists, :songs, :name

  def initialize(name)
    @name = name
    @songs = []
    @artists = []
  end

  def artists
    self.songs.map(&:artist)
  end





end
