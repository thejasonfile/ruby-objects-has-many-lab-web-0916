require "pry"

class Artist

  @@artists = []

  attr_accessor :name, :songs
  attr_reader :add_song

  def initialize(name)
    @name = name
    @songs = []
    @@artists << self
    @@song_count = 0
  end

  def add_song(song)
    songs << song
    song.artist = self
  end

  def add_song_by_name(name)
    add_song(Song.new(name))
  end

  def self.song_count
    @@artists.each do |song|
      @@song_count += song.songs.count
    end
  @@song_count
  end

end