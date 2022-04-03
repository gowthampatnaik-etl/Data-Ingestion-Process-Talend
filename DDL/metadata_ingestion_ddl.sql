USE [dwh]
GO

--DDL for metadata
DROP TABLE IF EXISTS meta.file_ingestion_metadata;
CREATE TABLE meta.file_ingestion_metadata
(
 id                    BIGINT IDENTITY (1,1)
,metakey               VARCHAR(100)
,active                BIT
,file_location         VARCHAR(100)
,file_name_pattern     VARCHAR(100)
,delimiter             VARCHAR(100)
,header                VARCHAR(100)
,encoding              VARCHAR(100)
,temp_table_schema     VARCHAR(100)
,temp_table            VARCHAR(100)
--,target_table_schema   VARCHAR(100)
--,target_table          VARCHAR(100)
,column_list           VARCHAR(100)
--,update_method         VARCHAR(100)
--,update_key            VARCHAR(100)
);
