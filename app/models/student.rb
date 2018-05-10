class Student < ApplicationRecord
    has_many :cohorts
    has_many :instructors
    has_many :cohorts
end
