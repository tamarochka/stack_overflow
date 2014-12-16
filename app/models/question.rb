class Question < ActiveRecord::Base
  validates :description, presence: true
  has_many :answers
end
