class Question < ActiveRecord::Base
  has_many :answers
  validates :heading, :presence => true, :uniqueness => true
  validates :post, :presence => true, :uniqueness => true

  scope :most_recent, -> {order(created_at: :desc).limit(4)}
end
