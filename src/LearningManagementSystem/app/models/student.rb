class Student < ApplicationRecord
    has_many :enrollment
    has_many :course, :through => :enrollment
    has_many :exam, :through => :course
end
