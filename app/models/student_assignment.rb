class StudentAssignment < ApplicationRecord
    belongs_to :student
    belongs_to :cohort
end
