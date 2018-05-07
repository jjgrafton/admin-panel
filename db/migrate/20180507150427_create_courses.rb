class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :name
      t.integer :total_in_course_hours
      t.string :instructor_name
      t.integer :instructor_id

      t.timestamps
    end
  end
end
