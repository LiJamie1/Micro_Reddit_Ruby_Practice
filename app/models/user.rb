class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true
  validates_length_of :username, within: 4..12

  validates :email, presence: true, uniqueness: true

  validates :password, presence: true
  validates_length_of :password, within: 6..16

  has_many :posts, dependent: :destroy
end
