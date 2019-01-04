class Trainee < User
  has_many :trainee_exams
  has_many :class_trainees
  has_many :classes, through: :class_traineees
end
