class Course < ApplicationRecord
    belongs_to :enrollment
    has_many :student, :through => :enrollment
    has_many :exam

    validates_length_of :course_name, :within => 1..50
end
