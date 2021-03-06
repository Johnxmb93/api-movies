class Movie < ApplicationRecord
  validates :year, numericality: {greater_than: 1887}
  validates :title, presence: true
  has_many :actors
  has_many :movie_genres
  has_many :genres, through: :movie_genres
end
