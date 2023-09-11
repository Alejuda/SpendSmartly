class Group < ApplicationRecord
  belongs_to :user
  has_many :entities

  validates :name, presence: true, length: { maximum: 100 }
  validates :icon, presence: true, length: { maximum: 200 }

  def total_amount
    entities.sum(:amount)
  end
end
