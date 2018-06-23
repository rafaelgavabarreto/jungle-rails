class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :product

  validates :user_id, presence: true
  validates :product_id, presence: true
  validates :rating, presence: true
  validates_numericality_of :rating, only_integer: true
  validates_inclusion_of :rating, :in => 1..5
end