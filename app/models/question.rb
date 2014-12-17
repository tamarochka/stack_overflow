class Question < ActiveRecord::Base
  validates :description, presence: true
  validates :title, length: {maximum: 40, message: "title is too long"}
  has_many :answers
end
