class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  CATEGORIES = %w[Chinese French Japanese Italian Belgian]

  def self.categories
    CATEGORIES
  end

  validates :name, presence: true
  validates :category, inclusion: { in: Restaurant.categories }
end
