class Question < ActiveRecord::Base
  validates :heading, :presence => true
  validates :post, :presence => true
end
