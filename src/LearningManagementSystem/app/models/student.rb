class Student < ApplicationRecord
    has_many :enrollment
    has_many :course, :through => :enrollment
    has_many :exam, :through => :course

    validates_length_of :first_name, :within => 1..20
    validates_length_of :last_name, :within => 1..20
end
