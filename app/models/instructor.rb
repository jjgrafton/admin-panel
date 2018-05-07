class Instructor < ApplicationRecord
    # validates :first_name, presence: true,
    # validates :last_name, presence: true,

    belongs_to :course
    has_many :cohorts
    has_many :students
end
