class Car < ApplicationRecord
  belongs_to :owner
  has_many :favorites
  has_many :reviews

  validates :brand, :model, :year, presence: true
  validates :year, format: { with: /(19|20)\d{2}/, message: 'Must be in format XXXX' }
end
