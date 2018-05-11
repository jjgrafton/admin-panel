class RemoveStudentsFromInstructors < ActiveRecord::Migration[5.2]
  def change
    remove_column :instructors, :students, :string
  end
end
