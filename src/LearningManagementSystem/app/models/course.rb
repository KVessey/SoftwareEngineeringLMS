class Course < ApplicationRecord
    belongs_to :enrollment
    has_many :student, :through => :enrollment
    has_many :exam
end
