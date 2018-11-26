class Course < ApplicationRecord
  has_many :students, :through => :enrollment
  has_many :enrollments
  has_many :exams

  validates_length_of :course_name, :within => 1..50

  def full_course_name
    "#{course_name} - #{semester}"
  end
end
