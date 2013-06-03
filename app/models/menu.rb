class Menu < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :restaurant_id, :name

  belongs_to :restaurant
end
