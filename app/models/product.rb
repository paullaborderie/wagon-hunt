class Product < ApplicationRecord
  has_attachment :photo
  belongs_to :user
  has_many :upvotes

  validates :name, presence: true, uniqueness: true
  validates :url, presence: true, uniqueness: true
  validates :tagline, presence: true, uniqueness:true
  validates :category, inclusion: { in: %w(tech education design), message: "%{value} is not a valid category" }
  validates :user, presence: true
end
