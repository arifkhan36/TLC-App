class CreateDrivers < ActiveRecord::Migration[5.1]
  def change
    create_table :drivers do |t|
      t.string :name
      t.integer :age
      t.float :rating

      t.timestamps
    end
  end
end
