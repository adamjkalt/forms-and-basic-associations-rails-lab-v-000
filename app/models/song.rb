class Song < ActiveRecord::Base
belongs_to :genre
belongs_to :artist
has_many :notes

def genre_name=(name)
  genre = Genre.find_or_create_by(name: name)
  self.genre = genre
end

def artist_name
end

def artist_name=(name)
  artist = Artist.find_or_create_by(name: name)
  self.artist = artist
end

end
