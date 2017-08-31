class Song

  attr_reader :name, :genre
  attr_accessor :artist

  def initialize(name = nil, genre)
    @genre = genre
    @name = name
    genre.songs << self
  end


end
