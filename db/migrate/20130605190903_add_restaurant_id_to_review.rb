class AddRestaurantIdToReview < ActiveRecord::Migration
  def change
  	change_table :reviews do |t|
  	  t.integer :restaurant_id
  	end
  end
end
