class Entity < ApplicationRecord
  belongs_to :user
  belongs_to :group

  validates :name, presence: true, length: { maximum: 100 }
  validates :amount, presence: true, numericality: { greater_than: 0 }

  def formatted_date
    created_at.strftime("%Y/%m/%d")
  end
end
