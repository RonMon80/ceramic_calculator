class CreateCeramicPieces < ActiveRecord::Migration[7.0]
  def change
    create_table :ceramic_pieces do |t|
      t.float :height
      t.float :width
      t.float :thickness
      t.float :clay_cost
      t.float :nail_polish_cost
      t.float :electricity_cost
      t.float :burn_duration
      t.float :oven_power
      t.float :maintenance_cost
      t.float :labor_cost

      t.timestamps
    end
  end
end
