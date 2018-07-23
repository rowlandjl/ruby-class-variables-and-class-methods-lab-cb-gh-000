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
    genre_array = []

    @@genres.each do |genre|
      if !genre_array.include?(genre)
        genre_array << genre
      end
    end
    genre_array
  end

  def self.artists
    artist_array = []

    @@artists.each do |artist|
      if !artist_array.include?(artist)
        artist_array << artist
      end
    end
    artist_array
  end

  def self.genre_count
    genre_hash = {}

    # self.genres.each do |genre|
    #   genre_hash[genre] = 0
    # end
    # 
    # @@genres.each do |genre|
    #   genre_hash[genre] += 1
    # end

    self.genres.each do |genre|
      @@genres.each do |gen|
        genre_hash[gen] += 1
      end
    end 

    genre_hash
  end

  def self.artist_count
  end

end
