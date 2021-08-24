class Auction < ApplicationRecord
  belongs_to :user
  has_many :bids, dependent: :destroy
  validates :initial_price, :item, :description, presence: true
end
