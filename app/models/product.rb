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
#  user_id      :integer
#
# Indexes
#
#  index_products_on_user_id  (user_id)
#
# Foreign Keys
#
#  user_id  (user_id => users.id)
#
class Product < ApplicationRecord
  belongs_to :user
  has_many :biddings, dependent: :delete_all

  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :auctionDate, presence: true
  validates :startingDate, presence: true
  validates :auctionDate, presence: true
end
