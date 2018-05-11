class RemoveCohortNamesFromStudents < ActiveRecord::Migration[5.2]
  def change
    remove_column :students, :cohort_names, :string
  end
end
