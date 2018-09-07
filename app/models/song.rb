class Song < ActiveRecord::Base
belongs_to :genre
belongs_to :artist
has_many :notes

def genre_name=(name)
  genre = Genre.find_or_create_by(name: name)
  self.genre = genre
end

def genre_name
  genre = Genre.find(name: name)
end

def artist_name
  artist = Artist.find(name: name)
end

def artist_name=(name)
  artist = Artist.find_or_create_by(name: name)
  self.artist = artist
end

def note_contents=(notes)
end

def note_contents
end

end
