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

  def clay_cost_calculation
    volume = height * width * thickness
    volume * clay_cost
  end

  def nail_polish_cost_calculation
    surface_area = 2 * (height * width + height * thickness + width * thickness)
    surface_area * nail_polish_cost
  end

  def electricity_cost_calculation
    electricity_cost * burn_duration * oven_power
  end

  def maintenance_cost_calculation
    maintenance_cost * burn_duration # Assuming maintenance cost increases with burn duration
  end

  def labor_cost_calculation
    labor_cost * burn_duration # Assuming labor cost is proportional to burn duration
  end

  def total_cost
    clay_cost_calculation +
    nail_polish_cost_calculation +
    electricity_cost_calculation +
    maintenance_cost_calculation +
    labor_cost_calculation
  end
end
