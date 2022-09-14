class AddTotalSeatsToAirplanes < ActiveRecord::Migration[5.2]
  def change
    add_column :airplanes, :total_seats, :integer
  end
end
