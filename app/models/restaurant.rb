# == Schema Information
#
# Table name: restaurants
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  address    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Restaurant < ActiveRecord::Base

  resourcify
  
  attr_accessible :name, :address

  validates :name, :presence => true
  validates :address, :presence => true
  has_many :menus
  has_many :reviews

  def to_s
    self.name
   end

  def averageRating
  	sum = 0.0
  	self.reviews.each do |x|
  		sum += x.rating 
  	end
  	average = sum / self.reviews.count 
  	average.round(2)
  end

  def printRating
  	if self.reviews.count > 0 
  		averageRating.to_s
  	else
  		"No Reviews Yet!"
  	end
  end
   
end
