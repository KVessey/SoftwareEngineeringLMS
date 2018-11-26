class Enrollment < ApplicationRecord
  belongs_to :student
  belongs_to :course

  def enrollment_gpa
    grades_total = 0
    exam_count = 0
    for exam in course.exams do
      grades = exam.grades.where(student_id: student_id)
      for grade in grades do
        grades_total += grade.grade
      end
      exam_count += 1
    end
    if exam_count > 0
      return grades_total / exam_count
    else
      return 'N/A'
    end
  end
end
