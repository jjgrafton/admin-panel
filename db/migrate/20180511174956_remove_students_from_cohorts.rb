class RemoveStudentsFromCohorts < ActiveRecord::Migration[5.2]
  def change
    remove_column :cohorts, :students, :string
  end
end
