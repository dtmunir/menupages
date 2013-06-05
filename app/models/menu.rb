# == Schema Information
#
# Table name: menus
#
#  id            :integer          not null, primary key
#  restaurant_id :integer
#  name          :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Menu < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :restaurant_id, :name, :restaurant

  belongs_to :restaurant, :dependent => :destroy    
  has_many :menu_items

  def to_s
  	"#{self.name} menu for #{self.restaurant}"
  end

end
