-- Active: 1666904461314@@127.0.0.1@3306@pizzeria

-- 1. Llista quants productes de tipus “Begudes”. s'han venut en una determinada localitat.
SELECT Count(p.`ID_Producte`) as Nombre_Productes_Venuts, b.`Localitat` FROM producte p INNER JOIN tipusproducte tp ON p.`ID_TipusProducte` = tp.`ID_TipusProducte` INNER JOIN detallcomanda dc ON dc.`ID_Producte` = p.`ID_Producte` INNER JOIN comanda c ON c.`ID_Comanda` = dc.`ID_Comanda`INNER JOIN botiga b ON b.`ID_Botiga` = c.`ID_Botiga` WHERE tp.`Nom` = 'Beguda' AND b.`Localitat` = 'Barcelona' GROUP BY b.`Localitat`;

-- 2. Llista quantes comandes ha efectuat un determinat empleat/da.
SELECT Count(c.`ID_Comanda`) as Nombre_Comandes, e.`ID_Empleat`, e.`Nom`, e.`Cognoms` FROM comanda c INNER JOIN empleat e ON c.`ID_Empleat`= e.`ID_Empleat` WHERE c.`ID_Empleat` = 4 GROUP BY c.`ID_Empleat`;