class MenuItem < ActiveRecord::Base
  attr_accessible :menu_id, :name, :price, :menu

  belongs_to :menu

  validates :name, :presence => true
  validates :price, :presence => true

end
