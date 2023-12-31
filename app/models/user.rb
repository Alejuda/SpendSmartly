class User < ApplicationRecord
  has_many :groups
  has_many :entities

  validates :name, presence: true, length: { maximum: 100 }
end
