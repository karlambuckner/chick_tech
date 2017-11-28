class Question < ActiveRecord::Base
  has_many :answers
  validates :heading, :presence => true
  validates :post, :presence => true
  
  scope :most_recent, -> {order(created_at: :desc).limit(4)}
end
