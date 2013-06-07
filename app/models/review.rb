# == Schema Information
#
# Table name: reviews
#
#  id            :integer          not null, primary key
#  comment       :string(255)
#  name          :string(255)
#  rating        :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  restaurant_id :integer
#

class Review < ActiveRecord::Base
	resourcify
	
	attr_accessible :name, :comment, :rating, :restaurant_id, :restaurant
	belongs_to :restaurant, :dependent => :destroy

	#validates :name, :presence => true, :uniqueness => true
	validates :comment, :presence => true
	validates :rating, :presence => true

	
  	def to_s
  		#"#{self.name}'s Review"
  		current_user.email +"'s Review"
  	end
end
