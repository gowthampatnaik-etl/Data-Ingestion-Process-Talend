
USE [dwh]
GO
--insert script for metadata
DELETE FROM [meta].[file_ingestion_metadata] WHERE metakey ='employees';
INSERT INTO [meta].[file_ingestion_metadata]
           ([metakey]
		   ,[active]
           ,[file_location]
           ,[file_name_pattern]
           ,[delimiter]
           ,[header]
           ,[encoding]
           ,[temp_table_schema]
           ,[temp_table]
           --,[target_table_schema]
           --,[target_table]
           ,[column_list]
           --,[update_method]
           ---,[update_key]
		   )
     VALUES
           ('employees'                        --unique identifier for each files
		   ,1                                  --active indicator
           ,'F:\Talend_Workspace\Input'        --file location
           ,'employees_*.txt'                  --file pattern
           ,','                                --delimiter
           ,'2'                                --skip rows 
           ,'UTF-8'                            --encoding
           ,'temp'                             --temp schema
           ,'employees_temp'                   --temp table
           --,'dwh'                            --target schema
           --,'employees'                      --target table 
           ,'name,department,salary'           --column list
           --,'U'                              --update strategy on target tables SCD-1/2
           --,'name,department'                --update key columns
		   );
GO


