START TRANSACTION;
-- elimina algunos de ellos (por ejemplo, IDs 1, 2 y 3)
DELETE FROM Billonarios WHERE IdBillonario IN (1, 2, 3);

-- Valida los registros eliminados
SELECT * FROM Billonarios WHERE IdBillonario IN (1, 2, 3);

-- -- ROLLBACK; -- Comento para prevenir reversión accidental
-- -- COMMIT; -- Comento para prevenir confirmación accidental


START TRANSACTION;
-- Inserta 15 registros en la tabla Organizaciones
SAVEPOINT before4;
INSERT INTO Organizaciones (FuenteIngreso, Organizacion, PatrimonioNeto, FuenteRiqueza) 
VALUES ('Fuente1', 'Organizacion1', 848584, 'Riqueza1'),
('Fuente2', 'Organizacion2', 745222, 'Riqueza2'),
('Fuente3', 'Organizacion3', 754545, 'Riqueza3'),
('Fuente4', 'Organizacion4', 554545, 'Riqueza4');
SAVEPOINT after4;
INSERT INTO Organizaciones (FuenteIngreso, Organizacion, PatrimonioNeto, FuenteRiqueza) VALUES
  ('Fuente6', 'Organizacion6',12323, 'Riqueza6'),
  ('Fuente7', 'Organizacion7',21323 , 'Riqueza7'),
  ('Fuente8', 'Organizacion8',321321, 'Riqueza8'),
  ('Fuente9', 'Organizacion9', 213213, 'Riqueza9');

-- elimina el savepoint de los primeros 4 registros insertados
-- RELEASE SAVEPOINT before4;
-- elimina el savepoint de los ultimos 4 registros insertados
-- RELEASE SAVEPOINT after4;
-- ROLLBACK; -- Descomenta para revertir la transacción
-- COMMIT; -- Descomenta para confirmar la transacción