class Movie < ApplicationRecord
  validates :year, numericality: {greater_than: 1887}
  validates :title, presence: true

end
