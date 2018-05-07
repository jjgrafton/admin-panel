class Student < ApplicationRecord
    has_many :courses, through: :student_assignment
    has_many :instructors
    has_many :cohorts
end
