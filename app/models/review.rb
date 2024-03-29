class Review < ApplicationRecord

  belongs_to :restaurant

  validates :content, presence: true
  validates :rating, presence: true
  validates_numericality_of :rating, :on => :create
  validates :rating, inclusion: { in: [0, 1, 2, 3, 4, 5], allow_nil: false }
end
