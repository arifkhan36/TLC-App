class AddColumnToTaxis < ActiveRecord::Migration[5.1]
  def change
    add_reference :taxis, :driver, foreign_key: true
  end
end
