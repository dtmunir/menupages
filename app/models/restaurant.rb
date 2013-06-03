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

  attr_accessible :name, :address

  validates :name, :presence => true
  validates :address, :presence => true
  has_many :menus

  def to_s
    self.name
   end
   
end
