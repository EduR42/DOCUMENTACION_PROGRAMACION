
EXEC sp_defaultdb @loginame='sa', @defdb='IGeoECommerce' 


SELECT CURRENT_TIMESTAMP;
-- CON ESTE HACEMOS FILTROS DE DATIME POR CUALQUIER TIPO ->DIA ->MES -> AÑO
SELECT DATEADD(MINUTE, -5, current_timestamp) AS xpFECHA;
select * from xcCarrito 
SELECT current_timestamp - 1   
Select * from xcCarrito  where xpFechaActualizacion < current_timestamp - 30
Select * from xcCarrito  where xpFechaActualizacion  > current_timestamp - 0.083333333

SELECT CURRENT_TIMESTAMP;  

SELECT SYSDATETIME()  
    ,SYSDATETIMEOFFSET()  
    ,SYSUTCDATETIME()  
    ,CURRENT_TIMESTAMP  
    ,GETDATE();


-- SIRVE PARA RENOMBRAR UNA COLUMNA DE UNA TABLA
EXEC sp_RENAME 'TableName.OldColumnName' , 'NewColumnName', 'COLUMN'

/* ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// */


--  //***************************************************************//
--  //-------- ESTE SCRIPT DESHABILITA LA TECLA ENTER----------------// 
--  //***************************************************************//

-- Primero desabilitar la integridad referencial
 EXEC sp_MSForEachTable 'ALTER TABLE ? NOCHECK CONSTRAINT ALL'
 GO
EXEC sp_MSforeachtable @command1 = "DROP TABLE ?"
-- Ahora volver a habilitar la integridad referencial
 EXEC sp_MSForEachTable 'ALTER TABLE ? CHECK CONSTRAINT ALL'
 GO

 /* ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// */
 
--  //***********************************************************************//
--  //---- SIRVE PARA CAMBIAR EL TIPO DE DATO A UNA COLUMNA DE UNA TABLA ----// 
--  //***********************************************************************//

ALTER TABLE table_name 
ALTER COLUMN column_name new_data_type(size);


 /* ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// */
 
--  //***********************************************************************//
--  //---- SIRVE PARA RESTAURAR EL ORDEN CONSECUTIVO EN OID ----// 
--  //***********************************************************************//

 DBCC CHECKIDENT (xcCorreo, RESEED, 1)


 /* ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// */

 --  //***********************************************************************//
--  //---- SIRVE PARA ELIMINAR LA COLUMNA DE UNA TABLA ----// 
--  //***********************************************************************//

ALTER TABLE dbo.doc_exb DROP COLUMN column_b;


 /* ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// */

