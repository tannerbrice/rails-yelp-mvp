class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true, length: { minimum: 3 }
  validates :rating, presence: true, numericality: true, :inclusion => 0..5
end
