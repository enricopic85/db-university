#Selezionare tutti gli studenti nati nel 1990 (160);

SELECT * 
FROM `students`
WHERE YEAR(`date_of_birth`) = 1990;

#Selezionare tutti i corsi che valgono più di 10 crediti (479);

SELECT * 
FROM `courses`
WHERE `cfu` > 10;

#Selezionare tutti gli studenti che hanno più di 30 anni

SELECT * 
FROM `students`
WHERE YEAR(CURRENT_DATE) - YEAR(`date_of_birth`) > 30
ORDER BY YEAR(`date_of_birth`) DESC;

#Selezionare tutti i corsi del primo semestre del primo anno di un qualsiasi corso di
laurea (286);

SELECT * FROM `courses`
WHERE `period` NOT LIKE 'II%'
AND `year`= 1;
-- oppure
SELECT * 
FROM `courses`
WHERE `period` LIKE 'I %'
AND `year` = 1;

#Selezionare tutti gli appelli d esame che avvengono nel pomeriggio(dopo le 14) del 20/06/2021(21);
SELECT * 
FROM `exams`
WHERE `date` = '2020-06-20'
AND `hour` > '14:00:00';

#Selezionare tutti i corsi di laurea magistrale(38);

SELECT * 
FROM `degrees`
WHERE `level` ="magistrale";

#Da quanti dipartimenti è composta l università?(12);

SELECT COUNT(`id`)
FROM `departments`;

#Quanti sono gli insegnanti che non hanno un numero di telefono?(50);

SELECT * 
FROM `teachers`
WHERE `phone` is NULL;