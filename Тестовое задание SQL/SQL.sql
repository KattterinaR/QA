SELECT pr.project_name AS "Проект",
    t.titel_name AS "Должность",
    ROUND(AVG(po.salary), 2) AS "Средняя зарплата"
FROM positions AS po
    JOIN projects AS pr ON po.project_id = pr.project_id
    JOIN titles AS t ON po.title_id = t.id
WHERE pr.project_name = 'ПУМЧД'
    AND t.titel_name = 'qa engineer'
GROUP BY pr.project_name,
    t.titel_name;
	
SELECT CONCAT(em.last_name, '  ', em.first_name) AS "Имя и фамилия сотрудника",
    t.titel_name AS "Должность"
FROM positions AS po
    JOIN employee AS em ON po.employee_id = em.employee_id
    JOIN titles AS t ON po.title_id = t.id
GROUP BY em.last_name,
    em.first_name,
    t.titel_name
HAVING COUNT(po.project_id) > 1;






