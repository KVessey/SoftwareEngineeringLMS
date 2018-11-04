class CreateGrades < ActiveRecord::Migration[5.2]
  def change
    create_table :grades do |t|
      t.integer :exam_id
      t.integer :student_id
      t.integer :grade

      t.timestamps
    end
  end
end
