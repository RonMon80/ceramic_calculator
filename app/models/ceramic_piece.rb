class CeramicPiece < ApplicationRecord
  # Validations
  validates :height, presence: true, numericality: { greater_than: 0 }
  validates :width, presence: true, numericality: { greater_than: 0 }
  validates :thickness, presence: true, numericality: { greater_than: 0 }
  validates :clay_cost, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :nail_polish_cost, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :electricity_cost, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :burn_duration, presence: true, numericality: { greater_than: 0 }
  validates :oven_power, presence: true, numericality: { greater_than: 0 }
  validates :maintenance_cost, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :labor_cost, presence: true, numericality: { greater_than_or_equal_to: 0 }

  # Method to compute the total cost of the ceramic piece
  def total_cost
    clay_cost +
    nail_polish_cost +
    (electricity_cost * burn_duration * oven_power) +
    maintenance_cost +
    labor_cost
  end
end
