class CreateInstructorAssignments < ActiveRecord::Migration[5.2]
  def change
    create_table :instructor_assignments do |t|
      t.integer :instructor_id
      t.integer :cohort_id
      t.integer :position

      t.timestamps
    end
  end
end
