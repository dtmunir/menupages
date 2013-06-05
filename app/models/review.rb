# == Schema Information
#
# Table name: reviews
#
#  id         :integer          not null, primary key
#  comment    :string(255)
#  rating     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Review < ActiveRecord::Base
	attr_accessible :name, :comment, :rating, :restaurant_id, :restaurant
	belongs_to :restaurant, :dependent => :destroy

	validates :name, :presence => true
	validates :comment, :presence => true
	validates :rating, :presence => true
  # attr_accessible :title, :body

  	def to_s
  		"#{self.name}'s Review"
  	end
end
