class Course < ApplicationRecord
    has_many :students, through: :student_assignment
    has_many :cohorts
    has_one :instructor
end
