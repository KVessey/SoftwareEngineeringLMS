class Course < ApplicationRecord
  has_many :students, :through => :enrollment
  has_many :enrollments, :dependent => :destroy
  has_many :exams, :dependent => :destroy

  validates_length_of :course_name, :within => 1..50

  def full_course_name
    "#{course_name} - #{semester}"
  end
end
