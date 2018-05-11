class RemoveCourseNamesFromStudents < ActiveRecord::Migration[5.2]
  def change
    remove_column :students, :course_names, :string
  end
end
