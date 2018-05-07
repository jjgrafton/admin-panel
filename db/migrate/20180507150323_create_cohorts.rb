class CreateCohorts < ActiveRecord::Migration[5.2]
  def change
    create_table :cohorts do |t|
      t.string :name
      t.date :start_date
      t.date :end_date
      t.string :course_name
      t.integer :course_id
      t.string :instructor_name
      t.integer :instructor_id
      t.string :students
      t.integer :student_id

      t.timestamps
    end
  end
end
