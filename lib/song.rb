class Song

  attr_accessor :name, :genre
  attr_reader :artist

  @@all = []

  def initialize(name, genre)
    @name = name
    @genre = genre
    genre.add_song(self)
    @@all << self

  end

  def artist=(art)
    @artist = art
    # Artist.all.detect{|artist| artist.name == art}
  end

  def self.all
    @@all
  end

  # def genre
  #   self.songs.
  # end

end
