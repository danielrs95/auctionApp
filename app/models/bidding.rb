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
class Bidding < ApplicationRecord
  belongs_to :product
  belongs_to :user

  validates :price, presence: true

  validate :amount_not_more_than_deposit_amount

  def amount_not_more_than_deposit_amount
    if price < product.price
      errors.add :price, "cannot be greater than the deposit amount"
    end
  end
end
