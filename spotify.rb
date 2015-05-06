class Song
  attr_accessor :title, :artist, :popularity, :genre, :playcount


  def initialize(title, artist, genre)
    @all_songs = []
    @title = title
    @artist = artist
    @genre = genre
    @popularity = 0
    @playcount = 0
    @all_songs << self
  end
  # The title, artist, and genre are set for each song when they are made. 
  # Popularity and playcount are sent to 0 for the song.
  # Each song is added to the array, all_songs.

  def self.all
    @all_songs
  end
  # This method will list all the songs on Songify

  def like
    @popularity += 1
  end

  def unlike
    @popularity -= 1
  end

  def play
    @playcount += 1
  end

end

class User
  attr_accessor :name, :playlist
  # The initialize method sets the name for the player and the playlist is set to nothing.
  def initialize(name)
    @name = name
    @playlist = []
  end


  def add_song(song)
    @playlist.push(song)
  end

end

shake_it_off = Song.new("Shake it Off", "Taylor Swift", "Pop")
all_about_that_bass = Song.new("All About That Bass", "Meghan Trainor", "Pop")
love_me_harder = Song.new("Love me Harder", "Ariana Grande", "Pop")

jackson = User.new("Jackson")

jackson.add_song(shake_it_off)
jackson.add_song(all_about_that_bass)
jackson.add_song(love_me_harder)

shake_it_off.play
all_about_that_bass.play
love_me_harder.play

shake_it_off.like
shake_it_off.like
shake_it_off.like

love_me_harder.like
love_me_harder.like
love_me_harder.unlike


