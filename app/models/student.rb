class Student < ApplicationRecord
    has_many :courses, through: :cohorts
    has_many :instructors
    has_many :cohorts
end
