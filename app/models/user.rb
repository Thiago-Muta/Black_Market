class User < ApplicationRecord
  has_many :auctions, dependent: :destroy
  has_many :bids, dependent: :destroy
  validates :email, :password, :first_name, :last_name, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
