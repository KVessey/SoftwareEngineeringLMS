class Enrollment < ApplicationRecord
  belongs_to :student
  belongs_to :course

  def enrollment_gpa
    grades_total = 0
    exam_count = 0
    for exam in course.exams do
      grade = exam.grades.find_by(student_id: student_id)
      if grade
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
