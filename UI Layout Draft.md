# UI View Draft

## Objects

These objects all have the id attribute created by rails, so keep that in mind.

### Student Object

|Attribute Name|Attribute Type|
|--------------|--------------|
|first_name    |string        |
|last_name     |string        |

### Administrator Object

|Attribute Name|Attribute Type|
|--------------|--------------|
|first_name    |string        |
|last_name     |string        |

### Course Object

|Attribute Name|Attribute Type|
|--------------|--------------|
|course_name   |string        |

### Exam Object

|Attribute Name|Attribute Type|
|--------------|--------------|
|course_id     |integer       |
|name          |string        |

### Grade Object

|Attribute Name|Attribute Type|
|--------------|--------------|
|exam_id       |integer       |
|student_id    |integer       |
|grade         |integer       |

### Enrollment Object

|Attribute Name|Attribute Type|
|--------------|--------------|
|course_id     |integer       |
|semester      |string        |
|student_id    |integer       |

## ADMINISTRATOR VIEW

### Administrator Landing Page

- [ ] View My Courses
  - Shows a list of all courses the admin is teaching
    - SCREEN:
    - [ ] Add Course - This will allow professor to add a course to teach to the roster
    - [ ] Drop Course – This will allow professor to remove a course and no longer offer
    - [ ] Look up Course by ID – This will allow user to search for class by Id
- [ ] View Students
  - Shows a list of all students that have registered for one of the professors courses
    - SCREEN:
    - [ ] Add Student – This will allow the admin to manually add a student
      - Requires: all fields in student class
    - [ ] Drop Student – This will allow the admin to drop a student from his course
      - Use student Id to drop student
    - [ ] Look Up / Edit Student – This will allow the admin to look up student by ID and edit them
      - Input Id to search for student

### Submenu Under Look Up / Edit

        - Upon clicking "Look Up Student" button, admin should  be prompted to input student Id
        - After inputing studentId, admin should see following items shown on screen regarding this student
          - Student ID
          - First Name
          - Middle Initial
          - Last Name
          - Student overall GPA for semester
        - Now the admin should see a list of all of the courses this student is registered in
          Screen will display list of each course with the following information:
          - Course ID
          - Course Name
          - Student Grade

## STUDENT VIEW

### Student Landing Page
