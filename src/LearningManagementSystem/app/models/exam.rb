class Exam < ApplicationRecord
  belongs_to :course
  has_many :grades, :dependent => :destroy

  validates_length_of :exam_name, :within => 1..20

  def full_exam_name
    "#{course.course_name} - #{exam_name}"
  end
end
