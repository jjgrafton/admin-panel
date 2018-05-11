class RemoveCourseNameFromCohorts < ActiveRecord::Migration[5.2]
  def change
    remove_column :cohorts, :course_name, :string
  end
end
