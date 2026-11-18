
-- =====================================================
-- VUA-SEN307 DATABASE SYSTEMS
-- WEEK 6 PRACTICAL - LAB 4
-- DATA MANIPULATION LANGUAGE (DML)
--
-- Student Name: Sampson-Ewuzie chimaobi gerald
-- Matric Number: VUG-SEN-24-11562
-- Database: sen307_vug_sen_24_11562
-- =====================================================

USE sen307_vug_sen_24_11562;


-- =====================================================
-- PART 1: INSERT DEPARTMENTS
-- =====================================================

INSERT INTO Department (dept_name) VALUES
('Software Engineering'),
('Computer Science'),
('Artificial Intelligence'),
('Data Science'),
('Cybersecurity');


-- =====================================================
-- PART 1: INSERT COURSES
-- =====================================================

INSERT INTO Course
(course_code, course_title, credit_units, description, dept_id)
VALUES

('SEN307', 'Database Systems', 3,
'Relational database design, SQL queries, normalization, transactions and indexing using MySQL.',
(SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),

('SEN301', 'Software Architecture', 3,
'Architectural styles, design patterns, microservices and how to structure large software systems.',
(SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),

('COS301', 'Operating Systems', 3,
'Processes, threads, CPU scheduling, memory management and file systems.',
(SELECT dept_id FROM Department WHERE dept_name = 'Computer Science')),

('COS305', 'Computer Networks', 3,
'TCP/IP, routing, switching, LAN and WAN design and network protocols.',
(SELECT dept_id FROM Department WHERE dept_name = 'Computer Science')),

('AIN301', 'Introduction to Artificial Intelligence', 3,
'Intelligent agents, search algorithms, knowledge representation and reasoning.',
(SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),

('AIN305', 'Machine Learning', 3,
'Supervised and unsupervised learning, neural networks, deep learning and model evaluation.',
(SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),

('AIN307', 'Natural Language Processing', 3,
'Text processing, word embeddings, language models, sentiment analysis and chatbots.',
(SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),

('DTS301', 'Data Visualization and Analytics', 2,
'Exploratory data analysis, charts, dashboards and telling stories with data.',
(SELECT dept_id FROM Department WHERE dept_name = 'Data Science')),

('DTS305', 'Big Data Technologies', 3,
'Distributed storage and processing of very large datasets with Hadoop and Spark.',
(SELECT dept_id FROM Department WHERE dept_name = 'Data Science')),

('CYB301', 'Network Security', 3,
'Firewalls, cryptography, intrusion detection and protecting networks from attacks.',
(SELECT dept_id FROM Department WHERE dept_name = 'Cybersecurity'));


-- =====================================================
-- PART 2: INSERT 10 LECTURERS
-- =====================================================

INSERT INTO Lecturer
(staff_no, full_name, email, dept_id)
VALUES

('VUA/ST/101', 'Dr Amaka Okafor', 'a.okafor@vua.edu.ng',
(SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),

('VUA/ST/102', 'Dr Musa Bello', 'm.bello@vua.edu.ng',
(SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),

('VUA/ST/103', 'Prof Chinedu Eze', 'c.eze@vua.edu.ng',
(SELECT dept_id FROM Department WHERE dept_name = 'Computer Science')),

('VUA/ST/104', 'Dr Fatima Ibrahim', 'f.ibrahim@vua.edu.ng',
(SELECT dept_id FROM Department WHERE dept_name = 'Computer Science')),

('VUA/ST/105', 'Dr Tunde Adeyemi', 't.adeyemi@vua.edu.ng',
(SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),

('VUA/ST/106', 'Dr Grace Nwosu', 'g.nwosu@vua.edu.ng',
(SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),

('VUA/ST/107', 'Dr Samuel Danjuma', 's.danjuma@vua.edu.ng',
(SELECT dept_id FROM Department WHERE dept_name = 'Data Science')),

('VUA/ST/108', 'Dr Zainab Mohammed', 'z.mohammed@vua.edu.ng',
(SELECT dept_id FROM Department WHERE dept_name = 'Data Science')),

('VUA/ST/109', 'Dr Peter Uche', 'p.uche@vua.edu.ng',
(SELECT dept_id FROM Department WHERE dept_name = 'Cybersecurity')),

('VUA/ST/110', 'Dr Esther James', 'e.james@vua.edu.ng',
(SELECT dept_id FROM Department WHERE dept_name = 'Cybersecurity'));


-- =====================================================
-- PART 2: INSERT 20 STUDENTS
-- =====================================================

INSERT INTO Student
(matric_no, full_name, gender, date_of_birth, dept_id)
VALUES

('VUG-SEN-24-11562', 'Sampson-Ewuzie chimaobi gerald', 'M', '2004-06-15',
(SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),

('VUG-SEN-24-10001', 'Ada Obi', 'F', '2005-03-14',
(SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),

('VUG-SEN-24-10002', 'John Musa', 'M', '2004-11-02',
(SELECT dept_id FROM Department WHERE dept_name = 'Computer Science')),

('VUG-SEN-24-10003', 'Mary Okeke', 'F', '2006-01-20',
(SELECT dept_id FROM Department WHERE dept_name = 'Computer Science')),

('VUG-SEN-24-10004', 'David Eze', 'M', '2003-08-12',
(SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),

('VUG-SEN-24-10005', 'Blessing James', 'F', '2005-07-09',
(SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),

('VUG-SEN-24-10006', 'Ibrahim Sani', 'M', '2004-04-18',
(SELECT dept_id FROM Department WHERE dept_name = 'Data Science')),

('VUG-SEN-24-10007', 'Esther Paul', 'F', '2007-02-11',
(SELECT dept_id FROM Department WHERE dept_name = 'Data Science')),

('VUG-SEN-24-10008', 'Samuel Okoro', 'M', '2006-09-23',
(SELECT dept_id FROM Department WHERE dept_name = 'Cybersecurity')),

('VUG-SEN-24-10009', 'Ruth Adeola', 'F', '2005-12-05',
(SELECT dept_id FROM Department WHERE dept_name = 'Cybersecurity')),

('VUG-SEN-24-10010', 'Daniel Ibrahim', 'M', '2003-05-17',
(SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),

('VUG-SEN-24-10011', 'Joy Nnamdi', 'F', '2004-10-21',
(SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),

('VUG-SEN-24-10012', 'Emeka Chukwu', 'M', '2005-02-14',
(SELECT dept_id FROM Department WHERE dept_name = 'Computer Science')),

('VUG-SEN-24-10013', 'Aisha Bello', 'F', '2006-06-30',
(SELECT dept_id FROM Department WHERE dept_name = 'Computer Science')),

('VUG-SEN-24-10014', 'Michael Sunday', 'M', '2007-04-08',
(SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),

('VUG-SEN-24-10015', 'Precious Okafor', 'F', '2004-01-25',
(SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),

('VUG-SEN-24-10016', 'Joshua Danladi', 'M', '2005-09-19',
(SELECT dept_id FROM Department WHERE dept_name = 'Data Science')),

('VUG-SEN-24-10017', 'Chiamaka Eze', 'F', '2003-11-13',
(SELECT dept_id FROM Department WHERE dept_name = 'Data Science')),

('VUG-SEN-24-10018', 'Abubakar Yusuf', 'M', '2006-03-07',
(SELECT dept_id FROM Department WHERE dept_name = 'Cybersecurity')),

('VUG-SEN-24-10019', 'Faith Johnson', 'F', '2007-08-16',
(SELECT dept_id FROM Department WHERE dept_name = 'Cybersecurity'));


-- =====================================================
-- PART 2: INSERT 40 ENROLMENTS
-- =====================================================

INSERT INTO Enrolment (student_id, course_id) VALUES

-- Course 1: 8 students
(1,1), (2,1), (3,1), (4,1),
(5,1), (6,1), (7,1), (8,1),

-- Course 2: 6 students
(1,2), (2,2), (3,2), (4,2), (5,2), (6,2),

-- Course 3: 6 students
(7,3), (8,3), (9,3), (10,3), (11,3), (12,3),

-- Course 4: 5 students
(1,4), (3,4), (5,4), (7,4), (9,4),

-- Course 5: 5 students
(2,5), (4,5), (6,5), (8,5), (10,5),

-- Course 6: 5 students
(11,6), (12,6), (13,6), (14,6), (15,6),

-- Course 7: 5 students
(14,7), (15,7), (16,7), (17,7), (18,7);


-- =====================================================
-- PART 2: COURSE ALLOCATIONS
-- =====================================================

INSERT INTO CourseAllocation (course_id, lecturer_id) VALUES
(1,1),
(1,2),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8),
(9,9),
(10,10);


-- =====================================================
-- PART 3: UPDATE A STUDENT'S DEPARTMENT
-- =====================================================

-- Check the student's original department
SELECT matric_no, full_name, dept_id
FROM Student
WHERE matric_no = 'VUG-SEN-24-11562';

-- Move the student to Computer Science
UPDATE Student
SET dept_id = 2
WHERE matric_no = 'VUG-SEN-24-11562';

-- Verify the department change
SELECT matric_no, full_name, dept_id
FROM Student
WHERE matric_no = 'VUG-SEN-24-11562';


-- =====================================================
-- PART 4: REFERENTIAL INTEGRITY EXERCISE
-- =====================================================

-- Create a temporary department
INSERT INTO Department (dept_name)
VALUES ('Library and Information Science');

-- Create a student in that department
INSERT INTO Student (matric_no, full_name, dept_id)
VALUES (
    '20239999',
    'Transfer Student',
    (SELECT dept_id FROM Department
     WHERE dept_name = 'Library and Information Science')
);

-- INTENTIONAL ERROR 1451:
-- Run this DELETE separately to demonstrate the
-- foreign-key restriction. Take a screenshot of
-- the error, then continue with the statements below.

-- DELETE FROM Department
-- WHERE dept_name = 'Library and Information Science';


-- Reassign the student to Software Engineering
UPDATE Student
SET dept_id = (
    SELECT dept_id
    FROM Department
    WHERE dept_name = 'Software Engineering'
)
WHERE matric_no = '20239999';

-- Delete the temporary department
DELETE FROM Department
WHERE dept_name = 'Library and Information Science';

-- Verify departments
SELECT * FROM Department;

-- Verify the transfer student still exists
SELECT matric_no, full_name, dept_id
FROM Student
WHERE matric_no = '20239999';


-- =====================================================
-- FINAL CHECK: TOTAL RECORD COUNTS
-- =====================================================

SELECT 'Departments' AS tbl, COUNT(*) AS total
FROM Department

UNION ALL

SELECT 'Lecturers', COUNT(*)
FROM Lecturer

UNION ALL

SELECT 'Students', COUNT(*)
FROM Student

UNION ALL

SELECT 'Courses', COUNT(*)
FROM Course

UNION ALL

SELECT 'Enrolments', COUNT(*)
FROM Enrolment

UNION ALL

SELECT 'Allocations', COUNT(*)
FROM CourseAllocation;


-- =====================================================
-- END OF WEEK 6 PRACTICAL
-- =====================================================
