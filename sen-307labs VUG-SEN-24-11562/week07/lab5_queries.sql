-- ============================================
-- VUA-SEN307 Lab 5: SELECT, Filtering and Joins
-- Name: Sampson-Ewuzie chimaobi
-- Matric: VUG/SEN/24/11562
-- ============================================

-- This file contains SQL queries for Lab 5. Each query is preceded by a comment explaining its purpose.
USE sen307_vug_sen_24_12966;


-- Task 1: Students in one department, sorted A-Z
-- This query joins Student to Department using dept_id, selects students
-- in the Software Engineering department, and sorts their names alphabetically.
SELECT
    s.full_name,
    d.dept_name
FROM Student AS s
INNER JOIN Department AS d
    ON s.dept_id = d.dept_id
WHERE d.dept_name = 'Software Engineering'
ORDER BY s.full_name ASC;


-- Task 2: Courses with their lecturers (INNER JOIN)
-- CourseAllocation connects each course to the lecturer(s) teaching it.
-- A course assigned to two lecturers will appear twice.
SELECT
    c.course_title,
    l.full_name AS lecturer_name
FROM Course AS c
INNER JOIN CourseAllocation AS ca
    ON c.course_id = ca.course_id
INNER JOIN Lecturer AS l
    ON ca.lecturer_id = l.lecturer_id
ORDER BY c.course_title ASC, l.full_name ASC;


-- Task 3: Students and their courses (LEFT JOIN)
-- LEFT JOIN keeps every student, even if they have no enrolment.
-- Students without an enrolment will have NULL for course_title.
SELECT
    s.full_name,
    c.course_title
FROM Student AS s
LEFT JOIN Enrolment AS e
    ON s.student_id = e.student_id
LEFT JOIN Course AS c
    ON e.course_id = c.course_id
ORDER BY s.full_name ASC;


-- Optional extra for Task 3: Show only students with no courses
-- IS NULL filters the LEFT JOIN results to students without a matching course.
SELECT
    s.full_name,
    c.course_title
FROM Student AS s
LEFT JOIN Enrolment AS e
    ON s.student_id = e.student_id
LEFT JOIN Course AS c
    ON e.course_id = c.course_id
WHERE c.course_title IS NULL
ORDER BY s.full_name ASC;


-- Task 4: Filtering with AND / OR / IN / BETWEEN
-- This example selects female students in departments 1 or 3
-- whose dates of birth fall between 1 January 2004 and 31 December 2005.
SELECT
    s.student_id,
    s.full_name,
    s.gender,
    s.dept_id,
    s.date_of_birth
FROM Student AS s
WHERE s.gender = 'F'
  AND s.dept_id IN (1, 3)
  AND s.date_of_birth BETWEEN '2004-01-01' AND '2005-12-31'
ORDER BY s.full_name ASC;


-- Task 5: Paginating enrolments with LIMIT and OFFSET
-- Page 1: returns the first 10 enrolment rows.
SELECT *
FROM Enrolment
ORDER BY enrolment_id
LIMIT 10 OFFSET 0;


-- Page 2: skips the first 10 rows and returns the next 10.
SELECT *
FROM Enrolment
ORDER BY enrolment_id
LIMIT 10 OFFSET 10;


-- Task 5 explanation:
-- ORDER BY is needed so that rows have a consistent order between pages.
-- Without it, the database is not required to return rows in a predictable order.


-- Optional challenge: Rewrite Task 3 using RIGHT JOIN
-- This keeps every Student row because Student is the right-hand table
-- in the second RIGHT JOIN. It gives the same student/course result as Task 3.
SELECT
    s.full_name,
    c.course_title
FROM Course AS c
RIGHT JOIN Enrolment AS e
    ON c.course_id = e.course_id
RIGHT JOIN Student AS s
    ON e.student_id = s.student_id
ORDER BY s.full_name ASC;

-- The LEFT JOIN version is easier to read because it starts with Student,
-- the table whose every row must be retained, and then adds matching records.
