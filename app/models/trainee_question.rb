class TraineeQuestion < ApplicationRecord
  belongs_to :trainee_exam
  has_many :trainee_answers
end
