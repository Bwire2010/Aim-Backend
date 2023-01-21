class Asset < ApplicationRecord
  belongs_to :category, optional: true
  has_many :requests
  has_many :users,  through: :requests
  # belongs_to :request
  validates :name, presence: true, length: { minimum: 3 }
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :description, presence: true
  validates :location, presence: true
end
