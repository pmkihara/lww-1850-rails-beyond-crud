class Review < ApplicationRecord
  belongs_to :restaurant
  # @review.restaurant => instância de Restaurant

  validates :content, presence: true
end
