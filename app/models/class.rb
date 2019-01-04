class Class < ApplicationRecord
  belongs_to :trainer
  has_many :class_trainee
  has_many :trainee, through: :class_trainee
end
