class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :comment
      t.string :name
      t.integer :rating
      t.timestamps
    end
  end
end
