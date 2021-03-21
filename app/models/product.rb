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
class Product < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :auctionDate, presence: true
  validates :startingDate, presence: true
  validates :auctionDate, presence: true
end
