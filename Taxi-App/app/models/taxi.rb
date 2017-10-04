class Taxi < ApplicationRecord
  belongs_to :driver
  def info
    "model: #{model} | year: #{year}"
  end
end
