class Menu < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :restaurant_id, :name, :restaurant

  belongs_to :restaurant, :dependent => :destroy    
  has_many :menu_items
end
