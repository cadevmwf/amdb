class Movie < ActiveRecord::Base
  attr_accessible :director, :title, :year, :genre, :director_id
  
  belongs_to :director
  has_many :characters
  has_many :actors, :through => :characters
  has_many :ratings
  
  validates_presence_of :title, :message => "wazzup with that?"
  validates_presence_of :director_id
  
  def average_rating
    sum_total = ratings.inject(0.0) do |sum, rating|
      sum + rating.stars
    end
    return sum_total / ratings.count
    
    # sum = 0.0
    # ratings.each do |rating|
    #   sum = sum + rating.stars
    # end
    # return sum / ratings.count
  end
  
  
  # def director
  #   return Director.find_by_id(self.director_id)
  # end
  
  # def actors
  #   array_of_actors = ?
  
  #   Your code goes here.
  
  #   return array_of_actors
  # end
end







