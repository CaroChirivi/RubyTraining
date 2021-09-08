class Game < ApplicationRecord
    validates :name, :price, presence: true
    validates :platform, inclusion: { in: %w(PS4 XBox PC),
        message: "%{value} is not a valid platform" }
    validates :price, numericality: true
    validates :price, numericality: { greater_than_or_equal_to: 0 }
    validates :description, length: { maximum: 250 }
end
