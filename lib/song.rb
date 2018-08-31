

class Song

  @@count = 0
  @@unique_artists = []
  @@unique_genres = []
  @@allartists = []
  @@allgenres = []
  attr_accessor :name, :artist, :genre, :title

  # def initialize(name, artist, genre)
  #   @name = name
  #   @artist = artist
  #   @genre = genre
  #   @@count += 1
  #   @@allartists << artist
  #   @@allgenres << genre
  #   if !@@unique_artists.include?(artist)
  #     @@unique_artists << artist
  #   end
  #   if !@@unique_genres.include?(genre)
  #     @@unique_genres << genre
  #   end
  #   puts "All the artists: #{@@allartists}"
  #   puts "Unique artists: #{@@unique_artists}"
  # end


  def self.count
    @@count
  end

  def self.artists
    @@unique_artists
  end

  def self.genres
    @@unique_genres
  end

  def self.genre_count
    genre_hash = Hash.new
    @@allgenres.each do |genre|
      if genre_hash[genre] == nil
        genre_hash[genre] = 1
      else
        genre_hash[genre] += 1
      end
    end
    genre_hash
  end

  def self.artist_count
    artist_hash = Hash.new
    @@allartists.each do |artist|
      if artist_hash[artist] == nil
        artist_hash[artist] = 1
      else
        artist_hash[artist] += 1
      end
    end
    artist_hash
  end

  def self.class_variable_set(variable, value)
    if variable == :@@count
      @@count = value
    elsif variable == :@@artists
      @@allartists = value
    elsif variable == :@@genres
      return @@allgenres = value
    end
  end

  def self.class_variable_get(variable)
    puts "Variable: #{variable}"
    if variable == :@@count
      puts "Im in!"
      return @@count
    elsif variable == :@@artists
      puts "All the artists: #{@@allartists}"
      return @@allartists
    elsif variable == :@@genres
      puts "All the artists: #{@@allgenres}"
      return @@allgenres
    end
  end
end
