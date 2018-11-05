class Administrator < ApplicationRecord
    validates_length_of :first_name, :within => 1..20
    validates_length_of :last_name, :within => 1..20
end
