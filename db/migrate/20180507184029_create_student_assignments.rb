class CreateStudentAssignments < ActiveRecord::Migration[5.2]
  def change
    create_table :student_assignments do |t|
      t.integer :student_id
      t.integer :cohort_id
      t.integer :position

      t.timestamps
    end
  end
end
