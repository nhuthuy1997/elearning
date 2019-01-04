class Exam < ApplicationRecord
  belongs_to :class
  belongs_to :exam_structure
  has_many :questions
end
