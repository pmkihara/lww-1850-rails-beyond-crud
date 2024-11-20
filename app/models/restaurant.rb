class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  # @restaurant.reviews => todas as reviews que pertencem a este Restaurant
end
