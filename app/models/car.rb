class Car < ApplicationRecord
  belongs_to :owner
  has_many :favorites, :reviews

  validates :brand, :model, :owner, presence: true
  validates :year, format: { with: /(19|20)\d{2}/, message: 'Must be in format XXXX' }
end
