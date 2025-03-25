SELECT DISTINCT building FROM classroom WHERE capacity  >  50	college_2
SELECT DISTINCT building FROM classroom WHERE capacity  >  50	college_2
SELECT count(*) FROM classroom WHERE building != 'Lamberton'	college_2
SELECT count(*) FROM classroom WHERE building != 'Lamberton'	college_2
SELECT dept_name ,  building FROM department WHERE budget  >  (SELECT avg(budget) FROM department)	college_2
SELECT dept_name ,  building FROM department WHERE budget  >  (SELECT avg(budget) FROM department)	college_2
SELECT building ,  room_number FROM classroom WHERE capacity BETWEEN 50 AND 100	college_2
SELECT building ,  room_number FROM classroom WHERE capacity BETWEEN 50 AND 100	college_2
SELECT dept_name ,  building FROM department ORDER BY budget DESC LIMIT 1	college_2
SELECT dept_name ,  building FROM department ORDER BY budget DESC LIMIT 1	college_2
SELECT name FROM student WHERE dept_name  =  'History' ORDER BY tot_cred DESC LIMIT 1	college_2
SELECT name FROM student WHERE dept_name  =  'History' ORDER BY tot_cred DESC LIMIT 1	college_2
SELECT count(*) FROM classroom WHERE building  =  'Lamberton'	college_2
SELECT count(*) FROM classroom WHERE building  =  'Lamberton'	college_2
SELECT count(DISTINCT s_id) FROM advisor	college_2
SELECT count(DISTINCT s_id) FROM advisor	college_2
SELECT count(DISTINCT dept_name) FROM course	college_2
SELECT count(DISTINCT dept_name) FROM course	college_2
SELECT count(DISTINCT course_id) FROM course WHERE dept_name  =  'Physics'	college_2
SELECT count(DISTINCT course_id) FROM course WHERE dept_name  =  'Physics'	college_2
SELECT T1.title FROM course AS T1 JOIN prereq AS T2 ON T1.course_id  =  T2.course_id GROUP BY T2.course_id HAVING count(*)  =  2	college_2
SELECT T1.title FROM course AS T1 JOIN prereq AS T2 ON T1.course_id  =  T2.course_id GROUP BY T2.course_id HAVING count(*)  =  2	college_2
SELECT T1.title ,  T1.credits , T1.dept_name FROM course AS T1 JOIN prereq AS T2 ON T1.course_id  =  T2.course_id GROUP BY T2.course_id HAVING count(*)  >  1	college_2
SELECT T1.title ,  T1.credits , T1.dept_name FROM course AS T1 JOIN prereq AS T2 ON T1.course_id  =  T2.course_id GROUP BY T2.course_id HAVING count(*)  >  1	college_2
SELECT count(*) FROM course WHERE course_id NOT IN (SELECT course_id FROM prereq)	college_2
SELECT count(*) FROM course WHERE course_id NOT IN (SELECT course_id FROM prereq)	college_2
SELECT title FROM course WHERE course_id NOT IN (SELECT course_id FROM prereq)	college_2
SELECT title FROM course WHERE course_id NOT IN (SELECT course_id FROM prereq)	college_2
SELECT COUNT (DISTINCT id) FROM teaches	college_2
SELECT COUNT (DISTINCT id) FROM teaches	college_2
SELECT sum(budget) FROM department WHERE dept_name  =  'Marketing' OR dept_name  =  'Finance'	college_2
SELECT sum(budget) FROM department WHERE dept_name  =  'Marketing' OR dept_name  =  'Finance'	college_2
SELECT dept_name FROM instructor WHERE name LIKE '%Soisalon%'	college_2
SELECT dept_name FROM instructor WHERE name LIKE '%Soisalon%'	college_2
SELECT count(*) FROM classroom WHERE building  =  'Lamberton' AND capacity  <  50	college_2
SELECT count(*) FROM classroom WHERE building  =  'Lamberton' AND capacity  <  50	college_2
SELECT dept_name ,  budget FROM department WHERE budget  >  (SELECT avg(budget) FROM department)	college_2
SELECT dept_name ,  budget FROM department WHERE budget  >  (SELECT avg(budget) FROM department)	college_2
SELECT name FROM instructor WHERE dept_name  =  'Statistics' ORDER BY salary LIMIT 1	college_2
SELECT name FROM instructor WHERE dept_name  =  'Statistics' ORDER BY salary LIMIT 1	college_2
SELECT title FROM course WHERE dept_name  =  'Statistics' INTERSECT SELECT title FROM course WHERE dept_name  =  'Psychology'	college_2
SELECT title FROM course WHERE dept_name  =  'Statistics' INTERSECT SELECT title FROM course WHERE dept_name  =  'Psychology'	college_2
SELECT title FROM course WHERE dept_name  =  'Statistics' EXCEPT SELECT title FROM course WHERE dept_name  =  'Psychology'	college_2
SELECT title FROM course WHERE dept_name  =  'Statistics' EXCEPT SELECT title FROM course WHERE dept_name  =  'Psychology'	college_2
SELECT id FROM teaches WHERE semester  =  'Fall' AND YEAR  =  2009 EXCEPT SELECT id FROM teaches WHERE semester  =  'Spring' AND YEAR  =  2010	college_2
SELECT id FROM teaches WHERE semester  =  'Fall' AND YEAR  =  2009 EXCEPT SELECT id FROM teaches WHERE semester  =  'Spring' AND YEAR  =  2010	college_2
SELECT DISTINCT T1.name FROM student AS T1 JOIN takes AS T2 ON T1.id  =  T2.id WHERE YEAR  =  2009 OR YEAR  =  2010	college_2
SELECT DISTINCT T1.name FROM student AS T1 JOIN takes AS T2 ON T1.id  =  T2.id WHERE YEAR  =  2009 OR YEAR  =  2010	college_2
SELECT dept_name FROM course GROUP BY dept_name ORDER BY count(*) DESC LIMIT 3	college_2
SELECT dept_name FROM course GROUP BY dept_name ORDER BY count(*) DESC LIMIT 3	college_2
SELECT dept_name FROM course GROUP BY dept_name ORDER BY sum(credits) DESC LIMIT 1	college_2
SELECT dept_name FROM course GROUP BY dept_name ORDER BY sum(credits) DESC LIMIT 1	college_2
SELECT title FROM course ORDER BY title ,  credits	college_2
SELECT title FROM course ORDER BY title ,  credits	college_2
SELECT dept_name FROM department ORDER BY budget LIMIT 1	college_2
SELECT dept_name FROM department ORDER BY budget LIMIT 1	college_2
SELECT dept_name ,  building FROM department ORDER BY budget DESC	college_2
SELECT dept_name ,  building FROM department ORDER BY budget DESC	college_2
SELECT name FROM instructor ORDER BY salary DESC LIMIT 1	college_2
SELECT name FROM instructor ORDER BY salary DESC LIMIT 1	college_2
SELECT * FROM instructor ORDER BY salary	college_2
SELECT * FROM instructor ORDER BY salary	college_2
SELECT name ,  dept_name FROM student ORDER BY tot_cred	college_2
SELECT name ,  dept_name FROM student ORDER BY tot_cred	college_2
SELECT T1.title ,  T3.name FROM course AS T1 JOIN teaches AS T2 ON T1.course_id  =  T2.course_id JOIN instructor AS T3 ON T2.id  =  T3.id WHERE YEAR  =  2008 ORDER BY T1.title	college_2
SELECT T1.title ,  T3.name FROM course AS T1 JOIN teaches AS T2 ON T1.course_id  =  T2.course_id JOIN instructor AS T3 ON T2.id  =  T3.id WHERE YEAR  =  2008 ORDER BY T1.title	college_2
SELECT T1.name FROM instructor AS T1 JOIN advisor AS T2 ON T1.id  =  T2.i_id GROUP BY T2.i_id HAVING count(*)  >  1	college_2
SELECT T1.name FROM instructor AS T1 JOIN advisor AS T2 ON T1.id  =  T2.i_id GROUP BY T2.i_id HAVING count(*)  >  1	college_2
SELECT T1.name FROM student AS T1 JOIN advisor AS T2 ON T1.id  =  T2.s_id GROUP BY T2.s_id HAVING count(*)  >  1	college_2
SELECT T1.name FROM student AS T1 JOIN advisor AS T2 ON T1.id  =  T2.s_id GROUP BY T2.s_id HAVING count(*)  >  1	college_2
SELECT count(*) ,  building FROM classroom WHERE capacity  >  50 GROUP BY building	college_2
SELECT count(*) ,  building FROM classroom WHERE capacity  >  50 GROUP BY building	college_2
SELECT max(capacity) ,  avg(capacity) ,  building FROM classroom GROUP BY building	college_2
SELECT max(capacity) ,  avg(capacity) ,  building FROM classroom GROUP BY building	college_2
SELECT title FROM course GROUP BY title HAVING count(*)  >  1	college_2
SELECT title FROM course GROUP BY title HAVING count(*)  >  1	college_2
SELECT sum(credits) ,  dept_name FROM course GROUP BY dept_name	college_2
SELECT sum(credits) ,  dept_name FROM course GROUP BY dept_name	college_2
SELECT min(salary) ,  dept_name FROM instructor GROUP BY dept_name HAVING avg(salary)  >  (SELECT avg(salary) FROM instructor)	college_2
SELECT min(salary) ,  dept_name FROM instructor GROUP BY dept_name HAVING avg(salary)  >  (SELECT avg(salary) FROM instructor)	college_2
SELECT count(*) ,  semester ,  YEAR FROM SECTION GROUP BY semester ,  YEAR	college_2
SELECT count(*) ,  semester ,  YEAR FROM SECTION GROUP BY semester ,  YEAR	college_2
SELECT YEAR FROM SECTION GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1	college_2
SELECT YEAR FROM SECTION GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1	college_2
SELECT semester ,  YEAR FROM SECTION GROUP BY semester ,  YEAR ORDER BY count(*) DESC LIMIT 1	college_2
SELECT semester ,  YEAR FROM SECTION GROUP BY semester ,  YEAR ORDER BY count(*) DESC LIMIT 1	college_2
SELECT dept_name FROM student GROUP BY dept_name ORDER BY count(*) DESC LIMIT 1	college_2
SELECT dept_name FROM student GROUP BY dept_name ORDER BY count(*) DESC LIMIT 1	college_2
SELECT count(*) ,  dept_name FROM student GROUP BY dept_name	college_2
SELECT count(*) ,  dept_name FROM student GROUP BY dept_name	college_2
SELECT semester ,  YEAR FROM takes GROUP BY semester ,  YEAR ORDER BY count(*) LIMIT 1	college_2
SELECT semester ,  YEAR FROM takes GROUP BY semester ,  YEAR ORDER BY count(*) LIMIT 1	college_2
SELECT i_id FROM advisor AS T1 JOIN student AS T2 ON T1.s_id  =  T2.id WHERE T2.dept_name  =  'History'	college_2
SELECT i_id FROM advisor AS T1 JOIN student AS T2 ON T1.s_id  =  T2.id WHERE T2.dept_name  =  'History'	college_2
SELECT T2.name ,  T2.salary FROM advisor AS T1 JOIN instructor AS T2 ON T1.i_id  =  T2.id JOIN student AS T3 ON T1.s_id  =  T3.id WHERE T3.dept_name  =  'History'	college_2
SELECT T2.name ,  T2.salary FROM advisor AS T1 JOIN instructor AS T2 ON T1.i_id  =  T2.id JOIN student AS T3 ON T1.s_id  =  T3.id WHERE T3.dept_name  =  'History'	college_2
SELECT course_id FROM course EXCEPT SELECT course_id FROM prereq	college_2
SELECT course_id FROM course EXCEPT SELECT course_id FROM prereq	college_2
SELECT title FROM course WHERE course_id NOT IN (SELECT course_id FROM prereq)	college_2
SELECT title FROM course WHERE course_id NOT IN (SELECT course_id FROM prereq)	college_2
SELECT title FROM course WHERE course_id IN (SELECT T1.prereq_id FROM prereq AS T1 JOIN course AS T2 ON T1.course_id  =  T2.course_id WHERE T2.title  =  'International Finance')	college_2
SELECT title FROM course WHERE course_id IN (SELECT T1.prereq_id FROM prereq AS T1 JOIN course AS T2 ON T1.course_id  =  T2.course_id WHERE T2.title  =  'International Finance')	college_2
SELECT title FROM course WHERE course_id IN (SELECT T1.course_id FROM prereq AS T1 JOIN course AS T2 ON T1.prereq_id  =  T2.course_id WHERE T2.title  =  'Differential Geometry')	college_2
SELECT title FROM course WHERE course_id IN (SELECT T1.course_id FROM prereq AS T1 JOIN course AS T2 ON T1.prereq_id  =  T2.course_id WHERE T2.title  =  'Differential Geometry')	college_2
SELECT name FROM student WHERE id IN (SELECT id FROM takes WHERE semester  =  'Fall' AND YEAR  =  2003)	college_2
SELECT name FROM student WHERE id IN (SELECT id FROM takes WHERE semester  =  'Fall' AND YEAR  =  2003)	college_2
SELECT T1.title FROM course AS T1 JOIN SECTION AS T2 ON T1.course_id  =  T2.course_id WHERE building  =  'Chandler' AND semester  =  'Fall' AND YEAR  =  2010	college_2
SELECT T1.title FROM course AS T1 JOIN SECTION AS T2 ON T1.course_id  =  T2.course_id WHERE building  =  'Chandler' AND semester  =  'Fall' AND YEAR  =  2010	college_2
SELECT T1.name FROM instructor AS T1 JOIN teaches AS T2 ON T1.id  =  T2.id JOIN course AS T3 ON T2.course_id  =  T3.course_id WHERE T3.title  =  'C Programming'	college_2
SELECT T1.name FROM instructor AS T1 JOIN teaches AS T2 ON T1.id  =  T2.id JOIN course AS T3 ON T2.course_id  =  T3.course_id WHERE T3.title  =  'C Programming'	college_2
SELECT T2.name ,  T2.salary FROM advisor AS T1 JOIN instructor AS T2 ON T1.i_id  =  T2.id JOIN student AS T3 ON T1.s_id  =  T3.id WHERE T3.dept_name  =  'Math'	college_2
SELECT T2.name ,  T2.salary FROM advisor AS T1 JOIN instructor AS T2 ON T1.i_id  =  T2.id JOIN student AS T3 ON T1.s_id  =  T3.id WHERE T3.dept_name  =  'Math'	college_2
SELECT T2.name FROM advisor AS T1 JOIN instructor AS T2 ON T1.i_id  =  T2.id JOIN student AS T3 ON T1.s_id  =  T3.id WHERE T3.dept_name  =  'Math' ORDER BY T3.tot_cred	college_2
SELECT T2.name FROM advisor AS T1 JOIN instructor AS T2 ON T1.i_id  =  T2.id JOIN student AS T3 ON T1.s_id  =  T3.id WHERE T3.dept_name  =  'Math' ORDER BY T3.tot_cred	college_2
SELECT title FROM course WHERE course_id IN (SELECT T1.prereq_id FROM prereq AS T1 JOIN course AS T2 ON T1.course_id  =  T2.course_id WHERE T2.title  =  'Mobile Computing')	college_2
SELECT title FROM course WHERE course_id IN (SELECT T1.prereq_id FROM prereq AS T1 JOIN course AS T2 ON T1.course_id  =  T2.course_id WHERE T2.title  =  'Mobile Computing')	college_2
SELECT T2.name FROM advisor AS T1 JOIN instructor AS T2 ON T1.i_id  =  T2.id JOIN student AS T3 ON T1.s_id  =  T3.id ORDER BY T3.tot_cred DESC LIMIT 1	college_2
SELECT T2.name FROM advisor AS T1 JOIN instructor AS T2 ON T1.i_id  =  T2.id JOIN student AS T3 ON T1.s_id  =  T3.id ORDER BY T3.tot_cred DESC LIMIT 1	college_2
SELECT name FROM instructor WHERE id NOT IN (SELECT id FROM teaches)	college_2
SELECT name FROM instructor WHERE id NOT IN (SELECT id FROM teaches)	college_2
SELECT id FROM instructor EXCEPT SELECT id FROM teaches	college_2
SELECT id FROM instructor EXCEPT SELECT id FROM teaches	college_2
SELECT name FROM instructor WHERE id NOT IN (SELECT id FROM teaches WHERE semester  =  'Spring')	college_2
SELECT name FROM instructor WHERE id NOT IN (SELECT id FROM teaches WHERE semester  =  'Spring')	college_2
SELECT dept_name FROM instructor GROUP BY dept_name ORDER BY avg(salary) DESC LIMIT 1	college_2
SELECT dept_name FROM instructor GROUP BY dept_name ORDER BY avg(salary) DESC LIMIT 1	college_2
SELECT avg(T1.salary) ,  count(*) FROM instructor AS T1 JOIN department AS T2 ON T1.dept_name  =  T2.dept_name ORDER BY T2.budget DESC LIMIT 1	college_2
SELECT avg(T1.salary) ,  count(*) FROM instructor AS T1 JOIN department AS T2 ON T1.dept_name  =  T2.dept_name ORDER BY T2.budget DESC LIMIT 1	college_2
SELECT T3.title ,  T3.credits FROM classroom AS T1 JOIN SECTION AS T2 ON T1.building  =  T2.building AND T1.room_number  =  T2.room_number JOIN course AS T3 ON T2.course_id  =  T3.course_id WHERE T1.capacity  =  (SELECT max(capacity) FROM classroom)	college_2
SELECT T3.title ,  T3.credits FROM classroom AS T1 JOIN SECTION AS T2 ON T1.building  =  T2.building AND T1.room_number  =  T2.room_number JOIN course AS T3 ON T2.course_id  =  T3.course_id WHERE T1.capacity  =  (SELECT max(capacity) FROM classroom)	college_2
SELECT name FROM student WHERE id NOT IN (SELECT T1.id FROM takes AS T1 JOIN course AS T2 ON T1.course_id  =  T2.course_id WHERE T2.dept_name  =  'Biology')	college_2
SELECT name FROM student WHERE id NOT IN (SELECT T1.id FROM takes AS T1 JOIN course AS T2 ON T1.course_id  =  T2.course_id WHERE T2.dept_name  =  'Biology')	college_2
SELECT count(DISTINCT T2.id) ,  count(DISTINCT T3.id) ,  T3.dept_name FROM department AS T1 JOIN student AS T2 ON T1.dept_name  =  T2.dept_name JOIN instructor AS T3 ON T1.dept_name  =  T3.dept_name GROUP BY T3.dept_name	college_2
SELECT count(DISTINCT T2.id) ,  count(DISTINCT T3.id) ,  T3.dept_name FROM department AS T1 JOIN student AS T2 ON T1.dept_name  =  T2.dept_name JOIN instructor AS T3 ON T1.dept_name  =  T3.dept_name GROUP BY T3.dept_name	college_2
SELECT T1.name FROM student AS T1 JOIN takes AS T2 ON T1.id  =  T2.id WHERE T2.course_id IN (SELECT T4.prereq_id FROM course AS T3 JOIN prereq AS T4 ON T3.course_id  =  T4.course_id WHERE T3.title  =  'International Finance')	college_2
SELECT T1.name FROM student AS T1 JOIN takes AS T2 ON T1.id  =  T2.id WHERE T2.course_id IN (SELECT T4.prereq_id FROM course AS T3 JOIN prereq AS T4 ON T3.course_id  =  T4.course_id WHERE T3.title  =  'International Finance')	college_2
SELECT name ,  salary FROM instructor WHERE salary  <  (SELECT avg(salary) FROM instructor WHERE dept_name  =  'Physics')	college_2
SELECT name ,  salary FROM instructor WHERE salary  <  (SELECT avg(salary) FROM instructor WHERE dept_name  =  'Physics')	college_2
SELECT T3.name FROM course AS T1 JOIN takes AS T2 ON T1.course_id  =  T2.course_id JOIN student AS T3 ON T2.id  =  T3.id WHERE T1.dept_name  =  'Statistics'	college_2
SELECT T3.name FROM course AS T1 JOIN takes AS T2 ON T1.course_id  =  T2.course_id JOIN student AS T3 ON T2.id  =  T3.id WHERE T1.dept_name  =  'Statistics'	college_2
SELECT T2.building ,  T2.room_number ,  T2.semester ,  T2.year FROM course AS T1 JOIN SECTION AS T2 ON T1.course_id  =  T2.course_id WHERE T1.dept_name  =  'Psychology' ORDER BY T1.title	college_2
SELECT T2.building ,  T2.room_number ,  T2.semester ,  T2.year FROM course AS T1 JOIN SECTION AS T2 ON T1.course_id  =  T2.course_id WHERE T1.dept_name  =  'Psychology' ORDER BY T1.title	college_2
SELECT name FROM instructor WHERE dept_name  =  'Comp. Sci.'	college_2
SELECT name FROM instructor WHERE dept_name  =  'Comp. Sci.'	college_2
SELECT name FROM instructor WHERE dept_name  =  'Comp. Sci.'  AND salary  >  80000	college_2
SELECT name FROM instructor WHERE dept_name  =  'Comp. Sci.'  AND salary  >  80000	college_2
SELECT name ,  course_id FROM instructor AS T1 JOIN teaches AS T2 ON T1.ID  =  T2.ID	college_2
SELECT name ,  course_id FROM instructor AS T1 JOIN teaches AS T2 ON T1.ID  =  T2.ID	college_2
SELECT name ,  course_id FROM instructor AS T1 JOIN teaches AS T2 ON T1.ID  =  T2.ID WHERE T1.dept_name  =  'Art'	college_2
SELECT name ,  course_id FROM instructor AS T1 JOIN teaches AS T2 ON T1.ID  =  T2.ID WHERE T1.dept_name  =  'Art'	college_2
SELECT name FROM instructor WHERE name LIKE '%dar%'	college_2
SELECT name FROM instructor WHERE name LIKE '%dar%'	college_2
SELECT DISTINCT name FROM  instructor ORDER BY name	college_2
SELECT DISTINCT name FROM  instructor ORDER BY name	college_2
SELECT course_id FROM SECTION WHERE semester  =  'Fall' AND YEAR  =  2009 UNION SELECT course_id FROM SECTION WHERE semester  =  'Spring' AND YEAR  =  2010	college_2
SELECT course_id FROM SECTION WHERE semester  =  'Fall' AND YEAR  =  2009 UNION SELECT course_id FROM SECTION WHERE semester  =  'Spring' AND YEAR  =  2010	college_2
SELECT course_id FROM SECTION WHERE semester  =  'Fall' AND YEAR  =  2009 INTERSECT SELECT course_id FROM SECTION WHERE semester  =  'Spring' AND YEAR  =  2010	college_2
SELECT course_id FROM SECTION WHERE semester  =  'Fall' AND YEAR  =  2009 INTERSECT SELECT course_id FROM SECTION WHERE semester  =  'Spring' AND YEAR  =  2010	college_2
SELECT course_id FROM SECTION WHERE semester  =  'Fall' AND YEAR  =  2009 EXCEPT SELECT course_id FROM SECTION WHERE semester  =  'Spring' AND YEAR  =  2010	college_2
SELECT course_id FROM SECTION WHERE semester  =  'Fall' AND YEAR  =  2009 EXCEPT SELECT course_id FROM SECTION WHERE semester  =  'Spring' AND YEAR  =  2010	college_2
SELECT DISTINCT salary FROM instructor WHERE salary  <  (SELECT max(salary) FROM instructor)	college_2
SELECT DISTINCT salary FROM instructor WHERE salary  <  (SELECT max(salary) FROM instructor)	college_2
SELECT COUNT (DISTINCT ID) FROM teaches WHERE semester  =  'Spring' AND YEAR  =  2010	college_2
SELECT COUNT (DISTINCT ID) FROM teaches WHERE semester  =  'Spring' AND YEAR  =  2010	college_2
SELECT dept_name ,  AVG (salary) FROM instructor GROUP BY dept_name HAVING AVG (salary)  >  42000	college_2
SELECT dept_name ,  AVG (salary) FROM instructor GROUP BY dept_name HAVING AVG (salary)  >  42000	college_2
SELECT name FROM instructor WHERE salary  >  (SELECT min(salary) FROM instructor WHERE dept_name  =  'Biology')	college_2
SELECT name FROM instructor WHERE salary  >  (SELECT min(salary) FROM instructor WHERE dept_name  =  'Biology')	college_2
SELECT name FROM instructor WHERE salary  >  (SELECT max(salary) FROM instructor WHERE dept_name  =  'Biology')	college_2
SELECT name FROM instructor WHERE salary  >  (SELECT max(salary) FROM instructor WHERE dept_name  =  'Biology')	college_2
