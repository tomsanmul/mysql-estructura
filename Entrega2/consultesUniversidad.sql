-- Active: 1666904461314@@127.0.0.1@3306@universidad

-- 1. Retorna un llistat amb el primer cognom, segon cognom i el nom de tots els/les alumnes. El llistat haurà d'estar ordenat alfabèticament de menor a major pel primer cognom, segon cognom i nom.
SELECT apellido1, apellido2, nombre FROM universidad.persona WHERE tipo = 'alumno' ORDER BY apellido1, apellido2, nombre;

-- 2. Esbrina el nom i els dos cognoms dels alumnes que no han donat d'alta el seu número de telèfon en la base de dades.
SELECT nombre, apellido1, apellido2 FROM universidad.persona WHERE tipo = 'alumno' AND ISNULL(telefono) ORDER BY apellido1, apellido2, nombre;

-- 3. Retorna el llistat dels alumnes que van néixer en 1999.
SELECT nombre, apellido1, apellido2 FROM universidad.persona WHERE tipo = 'alumno' AND YEAR(fecha_nacimiento) = '1999' ORDER BY apellido1, apellido2, nombre;

-- 4. Retorna el llistat de professors/es que no han donat d'alta el seu número de telèfon en la base de dades i a més el seu NIF acaba en K.
SELECT nombre, apellido1, apellido2 FROM universidad.persona WHERE tipo = 'profesor' AND ISNULL(telefono) ORDER BY apellido1, apellido2, nombre;

-- 5. Retorna el llistat de les assignatures que s'imparteixen en el primer quadrimestre, en el tercer curs del grau que té l'identificador 7.
SELECT asignatura.nombre FROM universidad.asignatura WHERE cuatrimestre = '1' AND curso = '3' AND  id_grado = '7';

-- 6. Retorna un llistat dels professors/es juntament amb el nom del departament al qual estan vinculats. El llistat ha de retornar quatre columnes, primer cognom, segon cognom, nom i nom del departament. El resultat estarà ordenat alfabèticament de menor a major pels cognoms i el nom.
SELECT persona.apellido1, persona.apellido2, persona.nombre, departamento.nombre AS 'nombre_departamento' FROM universidad.persona INNER JOIN universidad.profesor ON universidad.persona.id = universidad.profesor.id_profesor INNER JOIN universidad.departamento ON universidad.profesor.id_departamento = universidad.departamento.id WHERE persona.tipo = 'profesor' ORDER BY apellido1, apellido2, nombre;

-- 7. Retorna un llistat amb el nom de les assignatures, any d'inici i any de fi del curs escolar de l'alumne/a amb NIF 26902806M.
SELECT asignatura.nombre, curso_escolar.anyo_inicio, curso_escolar.anyo_fin FROM universidad.asignatura INNER JOIN universidad.alumno_se_matricula_asignatura ON universidad.asignatura.id = universidad.alumno_se_matricula_asignatura.id_asignatura INNER JOIN universidad.curso_escolar ON universidad.alumno_se_matricula_asignatura.id_curso_escolar = universidad.curso_escolar.id INNER JOIN universidad.persona ON universidad.persona.id = universidad.alumno_se_matricula_asignatura.id_alumno WHERE persona.nif = '26902806M';

-- 8. Retorna un llistat amb el nom de tots els departaments que tenen professors/es que imparteixen alguna assignatura en el Grau en Enginyeria Informàtica (Pla 2015).
SELECT DISTINCT departamento.nombre FROM departamento INNER JOIN profesor ON departamento.id = profesor.id_departamento INNER JOIN asignatura ON profesor.id_profesor = asignatura.id_profesor INNER JOIN grado ON asignatura.id_grado = grado.id WHERE grado.nombre = 'Grado en Ingeniería Informática (Plan 2015)' ;

-- 9. Retorna un llistat amb tots els alumnes que s'han matriculat en alguna assignatura durant el curs escolar 2018/2019.
SELECT DISTINCT persona.nombre, persona.apellido1, persona.apellido2 FROM persona INNER JOIN alumno_se_matricula_asignatura ON persona.id = alumno_se_matricula_asignatura.id_alumno INNER JOIN curso_escolar ON curso_escolar.id = alumno_se_matricula_asignatura.id_curso_escolar WHERE curso_escolar.anyo_inicio = '2018' and curso_escolar.anyo_fin = '2019';


-- Resol les 6 següents consultes utilitzant les clàusules LEFT JOIN i RIGHT JOIN.

-- 1. Retorna un llistat amb els noms de tots els professors/es i els departaments que tenen vinculats. El llistat també ha de mostrar aquells professors/es que no tenen cap departament associat. El llistat ha de retornar quatre columnes, nom del departament, primer cognom, segon cognom i nom del professor/a. El resultat estarà ordenat alfabèticament de menor a major pel nom del departament, cognoms i el nom.
SELECT DISTINCT departamento.nombre as 'nombre_departamento', persona.apellido1, persona.apellido2, persona.nombre FROM persona LEFT JOIN profesor ON persona.id = profesor.id_profesor LEFT JOIN departamento ON profesor.id_departamento = departamento.id WHERE persona.tipo = 'profesor' ORDER BY departamento.nombre, persona.apellido1, persona.apellido2, persona.nombre;

-- 2. Retorna un llistat amb els professors/es que no estan associats a un departament.
SELECT DISTINCT persona.apellido1, persona.apellido2, persona.nombre FROM persona LEFT JOIN profesor ON persona.id = profesor.id_profesor LEFT JOIN departamento ON profesor.id_departamento = departamento.id WHERE persona.tipo = 'profesor' AND departamento.id is null ORDER BY persona.apellido1, persona.apellido2, persona.nombre;

-- 3. Retorna un llistat amb els departaments que no tenen professors/es associats.
SELECT DISTINCT departamento.nombre as 'nombre_departamento' FROM departamento LEFT JOIN profesor ON departamento.id = profesor.id_departamento LEFT JOIN persona ON persona.id = profesor.id_profesor WHERE persona.nombre IS NULL;

-- 4. Retorna un llistat amb els professors/es que no imparteixen cap assignatura. 
SELECT DISTINCT persona.nombre, persona.apellido1, persona.apellido2, persona.tipo FROM persona LEFT JOIN profesor ON persona.id = profesor.id_profesor LEFT JOIN asignatura ON profesor.id_profesor = asignatura.id_profesor WHERE persona.tipo ='profesor' AND asignatura.id_profesor IS NULL;

-- 5. Retorna un llistat amb les assignatures que no tenen un professor/a assignat.
SELECT DISTINCT asignatura.nombre FROM asignatura WHERE asignatura.id_profesor IS NULL;

-- 6. Retorna un llistat amb tots els departaments que no han impartit assignatures en cap curs escolar.
SELECT DISTINCT departamento.nombre FROM departamento LEFT JOIN profesor ON departamento.id = profesor.id_departamento LEFT JOIN asignatura ON profesor.id_profesor = asignatura.id_profesor LEFT JOIN alumno_se_matricula_asignatura ON asignatura.id = alumno_se_matricula_asignatura.id_asignatura LEFT JOIN curso_escolar ON alumno_se_matricula_asignatura.id_curso_escolar = curso_escolar.id  WHERE asignatura.id_profesor IS NULL;

-- Consultes resum:

-- 1. Retorna el nombre total d'alumnes que hi ha.
SELECT count(id) AS Total_Alumnes FROM persona WHERE tipo = 'alumno';

-- 2. Calcula quants alumnes van néixer en 1999.
SELECT count(id) AS Total_Alumnes_nascuts_1999 FROM persona WHERE tipo = 'alumno' AND year(fecha_nacimiento) = '1999';
-- 3. Calcula quants professors/es hi ha en cada departament. El resultat només ha de mostrar dues columnes, una amb el nom del departament i una altra amb el nombre de professors/es que hi ha en aquest departament. El resultat només ha d'incloure els departaments que tenen professors/es associats i haurà d'estar ordenat de major a menor pel nombre de professors/es.
SELECT d.nombre, count(p.id) AS Nombre_de_profesors FROM persona p INNER JOIN profesor pr ON p.id = pr.id_profesor INNER JOIN departamento d ON pr.id_departamento = d.id WHERE p.tipo = 'profesor' GROUP BY d.nombre ORDER BY Nombre_de_profesors DESC;

-- 4. Retorna un llistat amb tots els departaments i el nombre de professors/es que hi ha en cadascun d'ells. Tingui en compte que poden existir departaments que no tenen professors/es associats. Aquests departaments també han d'aparèixer en el llistat.
SELECT d.nombre, count(p.id) AS Nombre_de_profesors FROM departamento d LEFT JOIN profesor pr ON d.id = pr.id_departamento LEFT JOIN persona p ON p.id = pr.id_profesor WHERE (p.nombre IS NULL) OR (p.tipo = 'profesor') GROUP BY d.nombre ORDER BY Nombre_de_profesors DESC;

-- 5. Retorna un llistat amb el nom de tots els graus existents en la base de dades i el nombre d'assignatures que té cadascun. Tingues en compte que poden existir graus que no tenen assignatures associades. Aquests graus també han d'aparèixer en el llistat. El resultat haurà d'estar ordenat de major a menor pel nombre d'assignatures.
SELECT g.nombre, count(a.id) AS Nombre_d_assignatures_associades FROM grado g LEFT JOIN asignatura a ON g.id = a.id_grado GROUP BY g.nombre ORDER BY Nombre_d_assignatures_associades DESC;

-- 6. Retorna un llistat amb el nom de tots els graus existents en la base de dades i el nombre d'assignatures que té cadascun, dels graus que tinguin més de 40 assignatures associades.
SELECT SubConsulta.nombre , SubConsulta.Nombre_d_assignatures_associades FROM (SELECT g.nombre, count(a.id) AS Nombre_d_assignatures_associades FROM grado g LEFT JOIN asignatura a ON g.id = a.id_grado GROUP BY g.nombre ORDER BY Nombre_d_assignatures_associades DESC ) AS SubConsulta WHERE Nombre_d_assignatures_associades > 40;

-- 7. Retorna un llistat que mostri el nom dels graus i la suma del nombre total de crèdits que hi ha per a cada tipus d'assignatura. El resultat ha de tenir tres columnes: nom del grau, tipus d'assignatura i la suma dels crèdits de totes les assignatures que hi ha d'aquest tipus.
SELECT g.nombre, a.tipo, SUM(creditos) AS Total_Credits FROM asignatura a INNER JOIN grado g ON a.id_grado = g.id GROUP BY a.tipo, a.id_grado;

-- 8. Retorna un llistat que mostri quants alumnes s'han matriculat d'alguna assignatura en cadascun dels cursos escolars. El resultat haurà de mostrar dues columnes, una columna amb l'any d'inici del curs escolar i una altra amb el nombre d'alumnes matriculats.
SELECT c.anyo_inicio, COUNT(a.id_alumno) AS Alumnes_matriculats FROM alumno_se_matricula_asignatura a INNER JOIN curso_escolar c ON a.id_curso_escolar = c.id GROUP BY id_curso_escolar;

-- 9. Retorna un llistat amb el nombre d'assignatures que imparteix cada professor/a. El llistat ha de tenir en compte aquells professors/es que no imparteixen cap assignatura. El resultat mostrarà cinc columnes: id, nom, primer cognom, segon cognom i nombre d'assignatures. El resultat estarà ordenat de major a menor pel nombre d'assignatures.
SELECT pr.id_profesor, p.nombre, p.apellido1, p.apellido2, count(a.id) AS Nombre_Asignatures FROM profesor pr LEFT JOIN asignatura a ON pr.id_profesor = a.id_profesor INNER JOIN persona p ON pr.id_profesor = p.id GROUP BY pr.id_profesor ORDER BY Nombre_Asignatures DESC;

-- 10. Retorna totes les dades de l'alumne/a més jove.
SELECT * from persona WHERE fecha_nacimiento = (SELECT  MAX(fecha_nacimiento) FROM persona WHERE tipo = 'alumno');

-- 11. Retorna un llistat amb els professors/es que tenen un departament associat i que no imparteixen cap assignatura.
SELECT p.apellido1, p.apellido2, p.nombre FROM persona p LEFT JOIN profesor pr ON p.id = pr.id_profesor LEFT JOIN asignatura a ON pr.id_profesor = a.id_profesor WHERE p.tipo ='profesor'  AND a.id_profesor IS NULL;