class Student < ApplicationRecord
    has_one :cohorts
    has_many :instructors
    
    validate :under_150

def under_150

    if self.d_o_b
      errors.add(:birthdate, 'You must be under 150 years old.') if self.d_o_b < 150.years.ago.to_date
    end
end
end
