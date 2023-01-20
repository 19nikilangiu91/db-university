-- Query
-- Join

-- 1. Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia

SELECT students.*, degrees.name
FROM degrees    
    JOIN students        
	    ON degrees.id = students.degree_id
WHERE degrees.name LIKE "Corso di Laurea in Economia";


-- 2. Selezionare tutti i Corsi di Laurea Magistrale del Dipartimento di Neuroscienze

SELECT departments.*, degrees.level
FROM departments    
    JOIN degrees        
        ON departments.id = degrees.department_id   
WHERE departments.name LIKE "Dipartimento di Neuroscienze"  
    AND degrees.level LIKE "Magistrale";


-- 3. Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)

SELECT teachers.*, course_teacher.course_id
FROM teachers   
    JOIN course_teacher        
        ON teachers.id = course_teacher.teacher_id
WHERE course_teacher.teacher_id = 44;


-- 4. Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e nome

SELECT students.id, students.surname, students.name, departments.name,  degrees.name 
FROM students
    JOIN degrees
        ON students.degree_id = degrees.id
    JOIN departments
        ON degrees.department_id = departments.id
ORDER BY students.surname, students.name ASC;

