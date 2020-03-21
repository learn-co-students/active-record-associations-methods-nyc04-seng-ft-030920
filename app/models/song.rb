class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    genre.name
  end

  def drake_made_this
    Artist.create_drake if !Artist.is_drake
    self.artist = Artist.is_drake
  end
end