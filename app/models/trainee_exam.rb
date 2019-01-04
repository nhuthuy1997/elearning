class TraineeExam < ApplicationRecord
  belongs_to :trainee, class_name: User.name
  belong_to :exam
  has_many :trainee_exams
end
