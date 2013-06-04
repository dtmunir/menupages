class MenuItem < ActiveRecord::Base
  attr_accessible :menu_id, :name, :price, :menu

  belongs_to :menu

end
