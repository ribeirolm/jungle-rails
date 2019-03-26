class Review < ActiveRecord::Base
  has_many :reviews

  validates :product_id, presence: true
  validates :user_id, presence: true
  validates :description, presence: true
  validates :rating, presence: true

end
