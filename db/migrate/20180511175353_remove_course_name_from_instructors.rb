class RemoveCourseNameFromInstructors < ActiveRecord::Migration[5.2]
  def change
    remove_column :instructors, :course_name, :string
  end
end
