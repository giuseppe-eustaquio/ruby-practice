class User < ApplicationRecord
  validates :email, presence: true
  validates :name, length: { within: 1..20 }
  has_many :microposts
end
