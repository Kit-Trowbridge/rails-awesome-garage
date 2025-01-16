class Review < ApplicationRecord
  belongs_to :car
  validates :comment, presence: true
  validates :rating, inclusion: { in: (1..5) }, allow_blank: true
end
