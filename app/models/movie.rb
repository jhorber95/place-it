class Movie < ApplicationRecord
  has_many :movie_reservations
  has_many :reservations, through: :movie_reservations
end
