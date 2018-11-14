class Student < ApplicationRecord
    has_many :enrollments
    has_many :courses, :through => :enrollments
    has_many :exams, :through => :courses

    validates_length_of :first_name, :within => 1..20
    validates_length_of :last_name, :within => 1..20

    def full_name
        "#{last_name}, #{first_name}"
      end
end
