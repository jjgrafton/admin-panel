class CreateInstructors < ActiveRecord::Migration[5.2]
  def change
    create_table :instructors do |t|
      t.string :first_name
      t.string :last_name
      t.string :course_name
      t.integer :course_id
      t.string :cohort_names
      t.integer :cohort_id
      t.string :students
      t.integer :salary

      t.timestamps
    end
  end
end
