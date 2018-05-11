class RemoveInstructorNameFromCohorts < ActiveRecord::Migration[5.2]
  def change
    remove_column :cohorts, :instructor_name, :string
  end
end
