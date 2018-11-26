class Exam < ApplicationRecord
  belongs_to :course
  has_many :grades

  validates_length_of :exam_name, :within => 1..20
end
