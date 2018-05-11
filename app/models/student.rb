class Student < ApplicationRecord
    has_one :cohorts
    has_many :instructors
end
