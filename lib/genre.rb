require 'pry'

class Genre


  attr_accessor :name, :songs, :artists

  def initialize(name)
    @name = name
    @songs = []
    @artists = []
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
  end

  def artists
    @songs.each do |song|
      # binding.pry
      if !@artists.include?(song.artist)
        @artists << song.artist
      end
    end
    @artists
  end

end
