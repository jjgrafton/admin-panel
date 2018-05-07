class Cohort < ApplicationRecord
    has_many :students
    has_one :course
    has_one :instructor
end
