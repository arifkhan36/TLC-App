class RemoveTaxiIdFromDrivers < ActiveRecord::Migration[5.1]
  def change
    remove_column :drivers, :taxi_id, :integer
  end
end
