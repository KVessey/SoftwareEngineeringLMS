class MoveSemesterColumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :enrollments, :semester, :string
    add_column :courses, :semester, :string
  end
end
