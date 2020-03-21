class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    songs.first.genre
  end

  def song_count
    songs.count
  end

  def genre_count
    genres.count
  end

  def self.is_drake
    find_by(name: 'Drake')
  end

  def self.create_drake
    drake = create(name: 'Drake')
  end
end
