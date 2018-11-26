class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :password_digest
      t.index ["username"], name: "index_students_on_username", unique: true

      t.timestamps
    end
  end
end
