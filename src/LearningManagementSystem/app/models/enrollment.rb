class Enrollment < ApplicationRecord
    belongs_to :student
    has_one :course, dependent :destroy
end
