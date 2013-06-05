# == Schema Information
#
# Table name: menu_items
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  price      :decimal(, )
#  menu_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class MenuItem < ActiveRecord::Base
  attr_accessible :menu_id, :name, :price, :menu

  belongs_to :menu

  validates :name, :presence => true
  validates :price, :presence => true

end
