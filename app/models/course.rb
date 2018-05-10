class Course < ApplicationRecord
    has_many :cohorts
    has_one :instructor
end
