class Review < ApplicationRecord
  belongs_to :restaurant

  def self.possible_ratings
    1..5
  end

  validates :content, presence: true
  validates :rating, inclusion: { in: Review.possible_ratings }
end
