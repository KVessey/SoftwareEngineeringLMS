class Student < ApplicationRecord
  has_many :enrollments, :dependent => :destroy
  has_many :courses, :through => :enrollments
  has_many :exams, :through => :courses

  has_secure_password

  validates :username, presence: true, uniqueness: true
  validates_length_of :first_name, :within => 1..20
  validates_length_of :last_name, :within => 1..20

  def full_name
    "#{last_name}, #{first_name}"
  end
end
