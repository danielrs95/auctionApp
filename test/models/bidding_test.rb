# == Schema Information
#
# Table name: biddings
#
#  id         :integer          not null, primary key
#  price      :decimal(, )
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  product_id :integer          not null
#  user_id    :integer          not null
#
# Indexes
#
#  index_biddings_on_product_id  (product_id)
#  index_biddings_on_user_id     (user_id)
#
# Foreign Keys
#
#  product_id  (product_id => products.id)
#  user_id     (user_id => users.id)
#
require "test_helper"

class BiddingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
