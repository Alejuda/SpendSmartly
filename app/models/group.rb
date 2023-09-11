class Group < ApplicationRecord
  belongs_to :user
  has_many :entities

  validates :name, presence: true, length: { maximum: 100 }
  validates :name, presence: true, length: { maximum: 200 }
end
