class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres


    @@genres
  end

  def self.artists
    artist_array = []

    @@artists.each do |artist|
      if !artist_array.include?(artist)
        new_array << artist
      end
    end
    new_array
  end

  def self.genre_count
  end

  def self.artist_count
  end

end
