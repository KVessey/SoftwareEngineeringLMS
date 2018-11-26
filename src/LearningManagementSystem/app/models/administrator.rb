class Administrator < ApplicationRecord
  has_secure_password

  validates :username, presence: true, uniqueness: true
  validates_length_of :first_name, :within => 1..20
  validates_length_of :last_name, :within => 1..20

  def full_name
    "#{last_name}, #{first_name}"
  end
end
