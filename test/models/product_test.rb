# == Schema Information
#
# Table name: products
#
#  id           :integer          not null, primary key
#  auctionDate  :datetime
#  description  :text
#  endingDate   :datetime
#  image        :text
#  name         :string
#  price        :decimal(, )
#  startingDate :datetime
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
require "test_helper"

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
