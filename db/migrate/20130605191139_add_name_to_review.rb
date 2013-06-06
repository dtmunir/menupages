class AddNameToReview < ActiveRecord::Migration
  def change
  	change_table :reviews do |x|
  		# x.string :name
  	end
  end
end
