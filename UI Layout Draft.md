# UI View Draft
<table>
  <tr>
    <td>
      <b>OBJECTS: </b></br>
    </td>
  </tr>
  
  <tr>
    <td>
      <b>STUDENT class: </b></br>
      •	Student ID </br>
      •	First Name </br>
      •	Middle Initial </br>
      •	Last Name </br>
    </td>
  </tr>
  
  <tr>
    <td>
      <b>ADMINISTRATOR class:</b> </br>
      •	Admin ID </br>
      •	First Name </br>
      •	Middle Initial </br>
      •	Last Name </br>
    </td>
  </tr>
</table>


# ADMININSTRATOR VIEW </br>
### Landing Page
- [ ]	View My Courses
  - Shows a list of all courses the admin is teaching
    - SCREEN:
    - [ ] Add Course – This will allow professor to add a course to teach to the roster
    - [ ] Drop Course – This will allow professor to remove a course and no longer offer
    - [ ] Look up Course by ID – This will allow user to search for class by Id
- [ ]	View Students
  - Shows a list of all students that have registered for one of the professors courses
    - SCREEN:
    - [ ] Add Student – This will allow a professor to manually add a student to his course
      - Requires: all fields in student class
    - [ ] Drop Student – This will allow a professor to drop a student from his course
      - Use student Id to drop student
    - [ ] Look up Student – This will allow professor to look up student by ID
      - Input Id to search for student
      - <b>SUBMENU:</b>
        - Upon clicking look for student button, admin should  be prompted to input student Id
        - After inputing studentId, admin should see following items shown on screen regarding this student
          - Student ID
          - First Name
          - Middle Initial
          - Last Name
          - Student overall GPA


# STUDENT VIEW
### Landing Page
