class AddTaxiIdToDriver < ActiveRecord::Migration[5.1]
  def change
    add_column :drivers, :taxi_id, :integer
  end
end
