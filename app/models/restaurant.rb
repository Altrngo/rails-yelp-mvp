class Restaurant < ApplicationRecord
  has_many :reviews

  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: %w(chinese italian japanese french belgian),
    message: "%{value} invalid category" }
  validates :phone_number, presence: true, numericality: { only_integer: true }

end
