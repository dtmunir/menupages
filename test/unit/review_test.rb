# == Schema Information
#
# Table name: reviews
#
#  id         :integer          not null, primary key
#  comment    :string(255)
#  rating     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class ReviewTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
