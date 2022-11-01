-- Active: 1666904461314@@127.0.0.1@3306@optica

-- 1. Llista el total de compres d’un client/a.
SELECT v.`ID_Venda`, v.`DataVenda`, v.`ID_Ulleres`, u.`Marca`, c.`ID_Client`, c.`Nom` as 'Nom Client', c.`NIF` FROM  vendes v INNER JOIN clients c ON v.`ID_Client` = c.`ID_Client` INNER JOIN ulleres u ON v.`ID_Ulleres` = u.`ID_Ulleres` WHERE c.`Nom` = 'Javier Ramirez' ;

-- 2. Llista les diferents ulleres que ha venut un empleat durant un any.
SELECT DISTINCT u.`ID_Ulleres`, u.`Marca`, u.`Muntura`, u.`ColorMontura`, e.`Nom` as 'Nom_Empleat', v.`DataVenda` FROM Ulleres u INNER JOIN vendes v ON u.`ID_Ulleres` = v.`ID_Ulleres` INNER JOIN empleat e ON v.`ID_Empleat` = e.`ID_Empleat` WHERE e.`Nom` = 'Alicia Sanchez' and Year(`DataVenda`) = '2022';

-- 3. Llista els diferents proveïdors que han subministrat ulleres venudes amb èxit per l'òptica.
SELECT DISTINCT p.`ID_Proveidor`, p.`Nom`, p.`Adreça`, p.`CP`, p.`Ciutat`, p.`Telefon`, p.`Fax`, p.`NIF` FROM proveidor p INNER JOIN ulleres u ON u.`ID_Proveidor` = p.`ID_Proveidor` INNER JOIN vendes v ON v.`ID_Ulleres` = u.`ID_Ulleres`

