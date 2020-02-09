class User < ApplicationRecord
  validates :email, presence: true
  validates :name, length: { within: 1..20 },
                  presence: true
  has_many :microposts
end
