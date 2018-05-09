class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.date :d_o_b
      t.string :highest_ed
      t.integer :cohort_id
      t.integer :course_id

      t.timestamps
    end
  end
end
