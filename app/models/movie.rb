class Movie < ActiveRecord::Base
  attr_accessible :director, :title, :year, :genre, :director_id
  
  belongs_to :director
  has_many :characters
  has_many :actors, :through => :characters
  has_many :ratings
  
  validates_presence_of :title, :message => "wazzup with that?"
  validates_presence_of :director_id
  
  # def director
  #   return Director.find_by_id(self.director_id)
  # end
  
  # def actors
  #   array_of_actors = ?
  
  #   Your code goes here.
  
  #   return array_of_actors
  # end
end







