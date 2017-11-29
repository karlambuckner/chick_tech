class Answer < ActiveRecord::Base
  belongs_to :question
  validates :body, :presence => true, :uniqueness => true
  validates :question_id, :presence => true
end
