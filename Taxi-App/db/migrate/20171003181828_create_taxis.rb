class CreateTaxis < ActiveRecord::Migration[5.1]
  def change
    create_table :taxis do |t|
      t.string :model
      t.integer :year

      t.timestamps
    end
  end
end
