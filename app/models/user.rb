class User < ActiveRecord::Base
  attr_accessible :name
  
  has_many :ratings
  has_many :movies, :through => :ratings

  # u.ratings.collect { |rating| rating.movie }
  # u.movies
  # def movies
  #   ratings.collect { |rating| rating.movie }
  # end
end
